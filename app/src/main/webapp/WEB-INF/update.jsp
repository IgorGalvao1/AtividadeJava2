<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Atualizar Livro</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1>Atualizar Livro</h1>
            <a href="/livro" class="btn btn-primary">Voltar</a>
            <form action="/update" method="post">
                <input type="hidden" name="id" value="${livro.id}" />
                <div class="form-group">
                    <label for="titulo">Título</label>
                    <input type="text" name="titulo" class="form-control" value="${livro}" />
                </div>
                <br />
                <button type="submit" class="btn btn-sucess">Salvar</button>
            </form>
        </div>
    </body>
</html>