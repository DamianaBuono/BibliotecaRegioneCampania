<%--
  Created by IntelliJ IDEA.
  User: utente
  Date: 14/06/2021
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Biblioteche della regione Campania</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="css/index.css">
</head>
<body>
<%@include file= "navbarAdmin.jsp" %>
<div class="container-fluid bg-2 text-center">
    <a name="who"></a>
    <div><h3 class="margin">Attenzione! Errore nel login, si prega di riprovare</h3>
    <a href="login.jsp"><button class="btn-default" type="button"> Riprova</button></a></div><br>
    <img src="img/error.jpg" class="img-responsive img-circle margin" style="display:inline" alt="copertina" width="300" height="300">
</div>
</body>
</html>

