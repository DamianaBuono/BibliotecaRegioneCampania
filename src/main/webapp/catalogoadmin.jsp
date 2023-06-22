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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/index.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <title>Biblioteche</title>
</head>
<body>

<%@include file= "navbarAdmin.jsp" %>
<%
    ArrayList<BibliotecaBean> list =(ArrayList<BibliotecaBean>) request.getAttribute("arrayBiblioteca");
%>
<!-- Second Container -->
<div  class="container-fluid bg-2 text-center" style="margin: 40px;">
    <section class="ftco-section ftco-cart">
        <div class="row ">
            <div class="card x">
                <div class="cart-list">
                    <h1>Biblioteche a <%=list.get(0).getProvincia()%></h1>
                    <input class="form-control" id="myInput" type="text" placeholder="Cerca...">
                    <table class="table">
                        <thead class="thead-primary">
                        <tr class="text-center">
                            <th>Nome</th>
                            <th>Provincia</th>
                            <th>Indirizzo</th>
                            <th>Cap</th>
                            <th>Telefono</th>
                            <th>Email</th>
                            <th>Url</th>
                            <th>Modifica</th>
                            <th>Elimina</th>
                        </tr>
                        </thead>
                        <tbody id="myTable">
                        <%
                            for (BibliotecaBean e : list) { %>
                        <tr id = "<%=e.getId()%>">
                            <% if (e.getDenominazione() == null || e.getDenominazione().isEmpty()) { %>
                            <td role="denominazione"> - </td>
                            <% } else { %>
                            <td role="denominazione"><%= e.getDenominazione() %></td>
                            <% } %>

                            <% if (e.getProvincia() == null || e.getProvincia().isEmpty()) { %>
                            <td role="provincia"> - </td>
                            <% } else { %>
                            <td role="provincia"><%= e.getProvincia() %></td>
                            <% } %>

                            <% if (e.getIndirizzo() == null || e.getIndirizzo().isEmpty()) { %>
                            <td role="indirizzo"> - </td>
                            <% } else { %>
                            <td role="indirizzo"><%= e.getIndirizzo() %></td>
                            <% } %>

                            <% if (e.getCap() == null){ %>
                            <td role="cap"> - </td>
                            <% } else { %>
                            <td role="cap"><%= e.getCap() %></td>
                            <% } %>

                            <% if (e.getTelefono() == null || e.getTelefono().isEmpty()) { %>
                            <td role="telefono"> - </td>
                            <% } else { %>
                            <td role="telefono"><%= e.getTelefono() %></td>
                            <% } %>

                            <% if (e.getEmail() == null || e.getEmail().isEmpty()) { %>
                            <td role="email"> - </td>
                            <% } else { %>
                            <td role="email"><%= e.getEmail() %></td>
                            <% } %>

                            <% if (e.getUrl() == null || e.getUrl().isEmpty()) { %>
                            <td role="url"> - </td>
                            <% } else { %>
                            <td role="url"><%= e.getUrl() %></td>
                            <% } %>

                            <td><button id ="<%=e.getId()%>" type="submit" class="button button2 submitter">Modifica</button></td>
                            <td><button type="button" class="removeX" data-toggle="modal" data-target="#elimina"><span style="font-size:20px; color: red;" class="glyphicon glyphicon-remove"></span></button></td>
                        </tr>
                        <%}
                            // %>
                        </tbody>
                    </table>


                </div>
            </div>
        </div>
    </section>

</div>

<!--modal per eliminare -->
<div class="modal" id="elimina" tabindex="-1" role="dialog" aria-labelledby="eliminaModalLabel" aria-hidden="true" >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="eliminaModalLabel">Attenzione</h4>
            </div>
            <!--body-->
            <div class="modal-body">
                <label>Sei sicuro di voler eliminare la biblioteca? </label>
            </div>
            <!--footer -->
            <div class="modal-footer">
                <button type="button"  class="btn btn-secondary removeX" data-dismiss="modal" onclick="fRemoveBibliotecaRiuscito()">Si, elimina</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" >Chiudi</button>
            </div>
        </div>
    </div>
</div>

<div class="alert alert-success alert-dismissible" id="removeBibilitcaRiuscito">
    <a class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Perfetto!</strong> Biblioteca rimossa con successo dal sistema.<br>
</div>

<script>

    document.getElementById("removeBibilitcaRiuscito").style.display="none";
    function fRemoveBibliotecaRiuscito(){
        document.getElementById("removeBibilitcaRiuscito").style.display="block";
    }



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

<style>
    #myTable td[role="email"] {
        max-width: 200px; /* Imposta la larghezza massima desiderata */
        word-wrap: break-word;
    }
</style>

<style>
    #myTable td[role="indirizzo"] {
        max-width: 200px; /* Imposta la larghezza massima desiderata */
        word-wrap: break-word;
    }
</style>
<script type="text/javascript" src= "js/controlCatalog.js"></script>

<%@include file= "footer.jsp" %>

</body>
</html>
