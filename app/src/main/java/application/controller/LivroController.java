package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Livro;
import application.model.LivroRepository;

@Controller
public class LivroController {

    @Autowired
    private LivroRepository livroRepo;

    @RequestMapping("/livro")
    public String list(Model model) {
        model.addAttribute("livros", livroRepo.findAll());
        return "WEB-INF/list.jsp";
    }

    @RequestMapping("/insert")
    public String insert() {
        return "WEB-INF/insert.jsp";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("titulo") String titulo,@RequestParam("genero") String genero,@RequestParam("isbn") String isbn) {
        Livro livro = new Livro();
        livro.setTitulo(titulo);
        livro.setGenero(genero);
        livro.setIsbn(isbn);

        livroRepo.save(livro);

        return "redirect:/livro";
    }

    @RequestMapping("/update")
    public String update(Model model, @RequestParam("id") int id) {
        Optional<Livro> livro = livroRepo.findById(id);

        if(!livro.isPresent()) {
            return "redirect:/livro";
        }

        model.addAttribute("livro", livro.get());
        return "WEB-INF/update.jsp";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(
        @RequestParam("titulo") String titulo,
        @RequestParam("id") int id,
        @RequestParam("genero") String genero,
        @RequestParam("isbn") String isbn
    ) {
        Optional<Livro> livro = livroRepo.findById(id);
        if(!livro.isPresent()) {
            return "redirect:/livro";
        }

        livro.get().setTitulo(titulo);
        livro.get().setGenero(genero);
        livro.get().setIsbn(isbn);

        livroRepo.save(livro.get());
        return "redirect:/livro";
    }

    @RequestMapping("/delete")
    public String delete(Model model, @RequestParam("id") int id) {
        Optional<Livro> livro = livroRepo.findById(id);

        if(!livro.isPresent()) {
            return "redirect:/livro";
        }

        model.addAttribute("livro", livro.get());
        return "WEB-INF/delete.jsp";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") int id) {
        livroRepo.deleteById(id);
        return "redirect:/livro";
    }
}
