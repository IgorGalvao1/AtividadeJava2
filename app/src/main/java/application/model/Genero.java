package application.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="generos")
public class Genero {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    private String nometitulo;
    

    public String getNometitulo() {
        return nometitulo;
    }
    public void setNometitulo(String nometitulo) {
        this.nometitulo = nometitulo;
    }
    private String isbn;

   
    public String getIsbn() {
        return isbn;
    }
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
}
