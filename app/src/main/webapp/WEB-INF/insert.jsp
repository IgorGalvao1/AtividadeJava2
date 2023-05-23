<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novo Livro</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" >
    </head>
    <body>
        <div class="container">
            <h1>Novo Livro</h1>
            <a href="/livro" class="btn btn-primary">Voltar</a>
            <form action="/insert" method="post">
                <div class="form-group">
                    <label for="titulo">Título</label>
                    <input type="text" name="titulo" class="form-control" />
                    <label for="genero">Gênero</label>
                    <select class="form-control" name="genero">
                        <c:forEach var="item" items="${generos}">
                            <option value="${item.id}">${item.nometitulo}</option>
                        </c:forEach>
                    </select>
                    <label for="isbn">isbn</label>
                    <input type="text" name="isbn" class="form-control" />
                </div>
                <br />
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>

