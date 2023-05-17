<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Atualizar Gênero</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" >
    </head>
    <body>
        <div class="container">
            <h1>Atualizar Gênero</h1>
            <a href="/genero" class="btn btn-primary">Voltar</a>
            <form action="/updategenero" method="post">
                <input type="hidden" name="id" value="${genero.id}" />
                <div class="form-group">
                    <label for="titulo">Gênero</label>
                    <input type="text" name="nometitulo" class="form-control" value="${genero}" />
                    
                </div>
                <br />
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>