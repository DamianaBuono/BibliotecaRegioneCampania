<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.bibliotecaregionecampania.bean.BibliotecaBean" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="css/index.css">
    <title>Catalogo Biblioteche</title>


    <style>
        #scheda:hover { cursor: pointer; }
    </style>

</head>
<body>

<%@include file= "navbar.jsp" %>
<%
    ArrayList<BibliotecaBean> list =(ArrayList<BibliotecaBean>) request.getAttribute("arrayBiblioteca");
%>
<!-- First Container -->
<div class="container-fluid bg-1 text-center">
    <a name="who"></a>
    <h3 class="margin">Biblioteche della regione Campania</h3>
    <img src="img/copertina.jpeg" class="img-responsive img-circle margin" style="display:inline" alt="copertina" width="550" height="550">

</div>
<!-- Second Container -->
<div  class="container-fluid bg-2 text-center" style="margin: 40px;">
    <a name="what"></a>
    <section class="ftco-section ftco-cart">
        <div class="row ">
            <div class="card x">
                <div class="cart-list">
                    <h1>Biblioteche a <%=list.get(0).getProvincia()%></h1>
                    <input class="form-control" id="myInput" type="text" placeholder="Cerca...">
                    <table class="table table-striped">
                        <thead class="thead-primary">
                        <tr class="text-center">
                            <th>Nome</th>
                            <th>Provincia</th>
                            <th>Indirizzo</th>
                            <th>Cap</th>
                            <th>Telefono</th>
                            <th>Email</th>
                            <th>Url</th>

                        </tr>
                        </thead>
                        <tbody id="myTable">
                        <%
                            for (BibliotecaBean e : list) { %>
                        <tr>
                            <td role = "nomeLuogo"><%=e.getDenominazione()%> </td>
                            <td role = "provincia"><%=e.getProvincia()%></td>
                            <td role = "indirizzo"><%=e.getIndirizzo()%></td>
                            <td role = "cap"><%=e.getCap()%></td>
                            <td role = "telefono"><%=e.getTelefono()%></td>
                            <td role = "email"><%=e.getEmail()%></td>
                            <td role = "url"><%=e.getUrl()%></td> </tr>

                        <%}%>
                        </tbody>
                    </table>


                </div>
            </div>
        </div>
    </section>
</div>

<%@include file= "footer.jsp" %>
<script>

    $(document).ready(function(){
        $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });



</script>
<style>
    #myTable td[role="url"] {
        max-width: 200px; /* Imposta la larghezza massima desiderata */
        word-wrap: break-word;
    }
</style>
</body>
</html>
