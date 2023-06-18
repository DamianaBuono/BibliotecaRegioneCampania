<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/navbar.css">
    <title>Navbar</title>
</head>
<body>

<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="homeAdmin.jsp">BiblioTeca</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">BIBLIOTECHE
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="ServletCatalogAdmin?provincia=a">Avellino</a></li>
                        <li><a href="ServletCatalogAdmin?provincia=b">Benevento</a></li>
                        <li><a href="ServletCatalogAdmin?provincia=c">Caserta</a></li>
                        <li><a href="ServletCatalogAdmin?provincia=n">Napoli</a></li>
                        <li><a href="ServletCatalogAdmin?provincia=s">Salerno</a></li>
                    </ul>
                </li>
                <li><a href="addBib.jsp">INSERISCI BIBLIOTECA</a></li>
                <li> <a href="Logout" class="btn">
                    <span class="glyphicon glyphicon-log-out"></span> LOG-OUT
                </a>
                </li>

            </ul>
        </div>
    </div>
</nav>
</body>
</html>

