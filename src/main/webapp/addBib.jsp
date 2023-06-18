<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Aggiungi Biblioteca</title>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/index.css">

</head>
<body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>



<%@include file= "navbarAdmin.jsp" %>
<!-- HEADER -->
<h3 style="text-align: center ">Bentornato, inserisci qui la nuova biblioteca.</h3>


<!-- FORM PER L'INSERIMENTO DEI DATI PER L'INSERIMENTO DI UN NUOVO PRODOTTO -->
<form  action="ServletAddBib" id="accedieregistrati" method="post"
      class="form-horizontal">

    <div class="form-group">
        <%--@declare id="nome"--%><label for="nome" class="col-sm-2 control-label">Denominazione</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="denominazione"
                   placeholder="Denominazione">
        </div>
    </div>

    <div class="form-group">
        <%--@declare id="nome"--%><label for="nome" class="col-sm-2 control-label">Provincia</label>
        <div class="col-sm-10">
            <select class="form-control" name="provincia" id="sel1">
                <option>Avellino</option>
                <option>Benevento</option>
                <option>Caserta</option>
                <option>Napoili</option>
                <option>Salerno</option>

            </select>
        </div>
    </div>

    <div class="form-group">
        <%--@declare id="nome"--%><label for="nome" class="col-sm-2 control-label">Comune</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="comune"
                   placeholder="Comune">
        </div>
    </div>

    <div class="form-group">
        <%--@declare id="nome"--%><label for="nome" class="col-sm-2 control-label">Cap</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="cap"
                   placeholder="Cap">
        </div>
    </div>


    <div class="form-group">
        <%--@declare id="nome"--%><label for="nome" class="col-sm-2 control-label">Telefono</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="telefono"
                   placeholder="Telefono">
        </div>
    </div>

    <div class="form-group">
        <%--@declare id="comment"--%><label for="comment" class="col-sm-2 control-label">Url</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="url"
                   placeholder="Url">
        </div>
    </div>


    <div class="form-group">
        <%--@declare id="nome"--%><label for="nome" class="col-sm-2 control-label">CodiceIsil</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="codiceIsil"
                   placeholder="CodiceIsil">
        </div>
    </div>


    <div class="form-group">
        <%--@declare id="nome"--%><label for="nome" class="col-sm-2 control-label">Email</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="email"
                   placeholder="Email">
        </div>
    </div>

    <div class="form-group">
        <label for="comment" class="col-sm-2 control-label">Indirizzo</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="indirizzo"
                   placeholder="Indirizzo">
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10"></div>
    </div>

    <div style="text-align: center" class="form-actions">
        <button type="submit" class="btn btn-success btn-large addAlbero">Inserisci</button>
        <button type="reset" class="btn">Annulla</button>

        <div class="col-sm-offset-2 col-sm-10"></div>
        <div class="col-sm-offset-2 col-sm-10"></div>

    </div>

</form>

</body>

</html>
