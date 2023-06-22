$(document).ready(function(){
    $(".removeX").click (remove);
    function remove () {
        var row = $(this).parents().filter("tr");
        var code = $(row).attr("id");
        $.post("ServletControlAdmin", {act: "delete", id : code})
            .done(function () {
                $(row).remove();
            })
            .fail(function () {
                alert("Non e' stato possibile rimuovere il prodotto");
            })
    }
    $(".button").click(prova);
    function prova (){
        var i=0;
        i++;
        var up = "update"+ i;
        var row = $(this).parent().parent().addClass(up);
        var code = $(this).parents().filter("tr").attr("id");
        var indirizzo = $("."+up+' [role="indirizzo"]').html();
        $("."+up+' [role="indirizzo"]').html('<input type = "text">');
        var comune = $("."+up+' [role="comune"]').html();
        $("."+up+' [role="comune"]').html('<input type = "text">');
        var telefono = $("."+up+' [role="telefono"]').html();
        $("."+up+' [role="telefono"]').html('<input type = "text">');
        var button = $("."+up+' .button');
        $(button).html('Salva');
        $(button).unbind();
        $(button).click(function () {
            var newIndirizzo = $("."+up+' [role="indirizzo"] input').val();
            var newComune = $("."+up+' [role="comune"] input').val();
            var newTelefono = $("."+up+' [role="telefono"] input').val();
            if (newIndirizzo == undefined || newComune == undefined || newTelefono == undefined) {
                alert ("Uno dei campi di input non e' stato riempito");
                console.log(newIndirizzo);
                console.log(newComune);
                console.log(newTelefono);
                $("."+up+' [role="indirizzo"]').html(indirizzo);
                $("."+up+' [role="comune"]').html(comune);
                $("."+up+' [role="telefono"]').html(telefono);
                $(button).unbind();
                $(button).html('Modifica');
                $(button).click(prova);
                return;
            }
            else {
                $(button).unbind();
                $.post ("ServletControlAdmin", {act: "modify" ,id : code, indirizzo: newIndirizzo, comune:newComune, telefono: newTelefono})
                    .done(function (json) {
                        $("."+up+' [role="indirizzo"]').html(json.newIndirizzo);
                        $("."+up+' [role="comune"]').html(json.newComune);
                        $("."+up+' [role="telefono"]').html(json.newTelefono);
                    })
                    .fail (function () {
                        alert("Modifica fallita!");
                        $("."+up+' [role="indirizzo"]').html(indirizzo);
                        $("."+up+' [role="comune"]').html(comune);
                        $("."+up+' [role="telefono"]').html(telefono);
                    })
                    .always (function () {
                        $(button).html('Modifica');
                        $(button).click(prova);
                        $('tbody '+"."+ up).removeClass(up);
                        if($("input").length == 0)
                            i = 0;
                    })

            }
        });
    }
});



