<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novo Genero</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h1>Novo livro</h1>
            <a href="/genero" class="btn btn-primary">Voltar</a>
            <form action="/insertGenero" method="post">
                <div class="form-group">
                    <label for="titulo">Titulo</label>
                    <input type="text" name="titulo" class="form-control">
                </div>
                <br>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>

</html>
