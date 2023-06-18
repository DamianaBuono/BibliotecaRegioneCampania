<!DOCTYPE html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-***" crossorigin="anonymous">

<html lang="en">
<head>
    <!-- Theme Made By www.w3schools.com - No Copyright -->
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

<%@include file= "navbar.jsp" %>

<!-- First Container -->
<div class="container-fluid bg-1 text-center">
    <a name="who"></a>
    <h3 class="margin">Biblioteche della regione Campania</h3>
    <img src="img/copertina.jpeg" class="img-responsive img-circle margin" style="display:inline" alt="copertina" width="550" height="550">
    <p style="color: white">La regione Campania, situata nel cuore dell'Italia meridionale,
        ospita una ricca e variegata rete di biblioteche che rappresentano un vero e
        proprio tesoro di conoscenza e cultura.
        Queste biblioteche, disseminate in città, piccoli comuni e centri culturali della regione,
        offrono un'ampia gamma di servizi e risorse per soddisfare le esigenze di lettori e
        ricercatori di ogni fascia d'eta'.
    </p>
</div>

<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center ">
    <a name="caratteristiche"></a>
    <h2>CARATTERISTICHE</h2>
    <br>
    <div class="row slideanim">
        <div class="col-sm-4">
            <span class="fas fa-layer-group logo-small"></span>
            <h4>RACCOLTA DI LIBRI</h4>
            <p>Sono conosciute principalmente per la loro vasta
                raccolta di libri. Offrono una varieta' di generi,
                autori e temi per soddisfare i diversi interessi dei lettori.</p>
        </div>
        <div class="col-sm-4">
            <span class="fas fa-book-reader logo-small"></span>
            <h4>ACCESSO ALL'INFORMAZIONE</h4>
            <p>Forniscono accesso a una vasta gamma di informazioni,
                oltre ai libri. Cio' include risorse digitali, giornali, riviste,
                pubblicazioni specializzate, banche dati e molto altro ancora.</p>
        </div>
        <div class="col-sm-4">
            <span class="glyphicon glyphicon-info-sign logo-small"></span>
            <h4>CONSULTAZIONE E RICERCA</h4>
            <p>Offrono spazi e risorse per la consultazione e la ricerca.
                Gli utenti possono accedere a cataloghi, archivi, banche dati,
                enciclopedie e altre risorse per svolgere ricerche e approfondire determinati argomenti.</p>
        </div>
    </div>
    <br><br>
    <div class="row slideanim">
        <div class="col-sm-4 ">
            <span class="fas fa-hard-hat logo-small"></span>
            <h4>PATRIMONIO CULTURALE</h4>
            <p>Svolgono un ruolo importante nella conservazione del patrimonio culturale e storico,
                mantenendo collezioni di libri antichi, manoscritti, documenti storici e
                altre opere preziose per le future generazioni.</p>
        </div>
        <div class="col-sm-4">
            <span class="fas fa-pencil-alt logo-small"></span>
            <h4>SPAZI DI STUDIO E LAVORO</h4>
            <p>Offrono spazi dedicati allo studio individuale e di gruppo, con tavoli,
                postazioni di lavoro e accesso a connessione internet.
                Questi spazi forniscono un ambiente tranquillo e stimolante per lo studio e
                la collaborazione. </p>
        </div>
        <div class="col-sm-4">
            <span class="fas fa-bookmark logo-small"></span>
            <h4>ATTIVITA' CULTURALI</h4>
            <p>Organizzano spesso laboratori, eventi culturali, letture,
                presentazioni di libri, mostre e altre attivita' che coinvolgono la comunita'.
                Queste iniziative promuovono la partecipazione, l'apprendimento e la condivisione
                di idee.</p>
        </div>
    </div>
</div>


<%@include file= "footer.jsp" %>

</body>
</html>