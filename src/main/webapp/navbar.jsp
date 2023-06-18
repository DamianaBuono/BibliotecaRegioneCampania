<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Navbar -->
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">BiblioTeca</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="index.jsp">CHI SIAMO</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">BIBLIOTECHE
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="ServletCatalog?provincia=a">Avellino</a></li>
                        <li><a href="ServletCatalog?provincia=b">Benevento</a></li>
                        <li><a href="ServletCatalog?provincia=c">Caserta</a></li>
                        <li><a href="ServletCatalog?provincia=n">Napoli</a></li>
                        <li><a href="ServletCatalog?provincia=s">Salerno</a></li>
                    </ul>
                </li>
                <li><a href="index.jsp#caratteristiche">CARATTERISTICHE</a></li>
                <li><a href="login.jsp">LOGIN</a></li>
            </ul>
        </div>
    </div>
</nav>

