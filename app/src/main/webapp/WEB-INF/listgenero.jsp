<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Livros</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" >
    </head>
    <body>
        <div class="container">
            <h1>Livros</h1>
            <a href="/insertgenero" class="btn btn-success">Adicionar Gênero</a>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Genero</th>
                </tr>
                <c:forEach var="item" items="${genero}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.genero}</td>
                        <td>
                            <a href="/update?id=${item.id}" class="btn btn-warning">Editar</a>
                            <a href="/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <a href="/insert" class="btn btn-primary">Novo Livro</a>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Título</th>
                    <th>Genero</th>
                    <th>isbn</th>
                    
                </tr>
                <c:forEach var="item" items="${livros}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.titulo}</td>
                        <td>${item.genero}</td>
                        <td>${item.isbn}</td>
                        <td>
                            <a href="/update?id=${item.id}" class="btn btn-warning">Editar</a>
                            <a href="/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>    
</html>