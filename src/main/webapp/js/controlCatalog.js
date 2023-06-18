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
        var altezza = $("."+up+' [role="altezza"]').html();
        $("."+up+' [role="altezza"]').html('<input type = "text">');
        var button = $("."+up+' .button');
        $(button).html('Salva');
        $(button).unbind();
        $(button).click(function () {
            var newAltezza = $("."+up+' [role="altezza"] input').val();
            if (newAltezza == undefined) {
                alert ("Uno dei campi di input non e' stato riempito");
                console.log(newAltezza);
                $("."+up+' [role="altezza"]').html(altezza);
                $(button).unbind();
                $(button).html('Modifica');
                $(button).click(prova);
                return;
            }
            else {
                $(button).unbind();
                $.post ("ServletControlAdmin", {act: "modify" ,id : code, altezza: newAltezza})
                    .done(function (json) {
                        $("."+up+' [role="altezza"]').html(json.newAltezza);
                    })
                    .fail (function () {
                        alert("Modifica fallita!");
                        $("."+up+' [role="altezza"]').html(altezza);
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