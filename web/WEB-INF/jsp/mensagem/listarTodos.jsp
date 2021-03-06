<%-- 
    Document   : listarAdministradores
    Created on : 28/05/2018, 09:28:43
    Author     : david
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!doctype html>
<html>
	<head> 
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>All Arts</title>

            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>"
            <link rel="stylesheet" href="<c:url value='/resources/css/estilos.css'/>" 
	
	</head>	
	<header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="col-sm-3">
                <nav class="navbar navbar-dark bg-dark">
                  <a class="navbar-brand" href="index.html">
                        <img src="<c:url value='/resources/img/logo.png'/>" width="200" height="150" alt="">
                  </a>
                </nav>
                </div>
            </nav>
        </header>
	<body>
            <div class="row">
            <div class="col-sm-12">
            <table class="table"> 
            <tr>
                <th>Nome</th>            
                <th>Endereço de e-mail</th>
                <th>Tipo</th>                  
                <th>Mensagem</th>
                <th>Situação</th>               
            </tr>
                <c:forEach items="${listaMensagens}" var="mensagem">
            <tr>
                <td>${mensagem.nome_usuario}</td>     
                <td>${mensagem.email_usuario}</td>                             
                <td>${mensagem.tipo}</td>
                <td>${mensagem.conteudo}</td>
                <td>${mensagem.status}</td>               
            </tr>
                </c:forEach>
            </table>        
        <footer>
            <h1 class="rodape"> Criado por @umalgoritmo e @david - Copyright © 2018-2018.</h1>
        </footer>
		<!-- jQuery (necessario para os plugins Javascript do Bootstrap) -->
        <script src="<c:url value='/resources/js/jquery.js'/>"></script>
        <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
        <script src="<c:url value='/resources/js/funcoes.js'/>"></script>  
	</body>
</html>