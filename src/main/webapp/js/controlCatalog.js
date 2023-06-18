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
        var denominazione = $("."+up+' [role="denominazione"]').html();
        $("."+up+' [role="denominazione"]').html('<input type = "text">');
        var telefono = $("."+up+' [role="telefono"]').html();
        $("."+up+' [role="telefono"]').html('<input type = "text">');
        var email = $("."+up+' [role="email"]').html();
        $("."+up+' [role="email"]').html('<input type = "text">');

        var cap = $("."+up+' [role="cap"]').html();
        $("."+up+' [role="cap"]').html('<input type = "text">');
        var provincia = $("."+up+' [role="provincia"]').html();
        $("."+up+' [role="provincia"]').html('<input type = "text">');
        var url = $("."+up+' [role="url"]').html();
        $("."+up+' [role="url"]').html('<input type = "text">');
        var comune = $("."+up+' [role="comune"]').html();

        var button = $("."+up+' .button');
        $(button).html('Salva');
        $(button).unbind();
        $(button).click(function () {
            var newIndirizzo = $("."+up+' [role="indirizzo"] input').val();
            if (newIndirizzo == undefined) {
                alert ("Uno dei campi di input non e' stato riempito");
                console.log(newIndirizzo);
                $("."+up+' [role="indirizzo"]').html(indirizzo);
                $(button).unbind();
                $(button).html('Modifica');
                $(button).click(prova);
                return;
            }

            var newDenominazione = $("."+up+' [role="denominazione"] input').val();
            if (newDenominazione == undefined) {
                alert ("Uno dei campi di input non e' stato riempito");
                console.log(newDenominazione);
                $("."+up+' [role="denominazione"]').html(denominazione);
                $(button).unbind();
                $(button).html('Modifica');
                $(button).click(prova);
                return;
            }

            var newTelefono = $("."+up+' [role="telefono"] input').val();
            if (newTelefono == undefined) {
                alert ("Uno dei campi di input non e' stato riempito");
                console.log(newTelefono);
                $("."+up+' [role="telefono"]').html(telefono);
                $(button).unbind();
                $(button).html('Modifica');
                $(button).click(prova);
                return;
            }

            var newEmail = $("."+up+' [role="email"] input').val();
            if (newEmail == undefined) {
                alert ("Uno dei campi di input non e' stato riempito");
                console.log(newEmail);
                $("."+up+' [role="email"]').html(email);
                $(button).unbind();
                $(button).html('Modifica');
                $(button).click(prova);
                return;
            }

            var newCap = $("."+up+' [role="cap"] input').val();
            if (newCap == undefined) {
                alert ("Uno dei campi di input non e' stato riempito");
                console.log(newCap);
                $("."+up+' [role="cap"]').html(cap);
                $(button).unbind();
                $(button).html('Modifica');
                $(button).click(prova);
                return;
            }

            var newProvincia = $("."+up+' [role="provincia"] input').val();
            if (newProvincia == undefined) {
                alert ("Uno dei campi di input non e' stato riempito");
                console.log(newProvincia);
                $("."+up+' [role="provincia"]').html(provincia);
                $(button).unbind();
                $(button).html('Modifica');
                $(button).click(prova);
                return;
            }

            var newUrl = $("."+up+' [role="url"] input').val();
            if (newUrl == undefined) {
                alert("Uno dei campi di input non e' stato riempito");
                console.log(newUrl);
                $("." + up + ' [role="url"]').html(url);
                $(button).unbind();
                $(button).html('Modifica');
                $(button).click(prova);
                return;
            }

            else {
                $(button).unbind();
                $.post ("ServletControlAdmin", {act: "modify" ,id : code, indirizzo: newIndirizzo})
                    .done(function (json) {
                        $("."+up+' [role="indirizzo"]').html(json.newIndirizzo);
                    })
                    .fail (function () {
                        alert("Modifica fallita!");
                        $("."+up+' [role="indirizzo"]').html(indirizzo);
                    })
                    .always (function () {
                        $(button).html('Modifica');
                        $(button).click(prova);
                        $('tbody '+"."+ up).removeClass(up);
                        if($("input").length == 0)
                            i = 0;
                    })

                $(button).unbind();
                $.post ("ServletControlAdmin", {act: "modify" ,id : code, denominazione: newDenominazione})
                    .done(function (json) {
                        $("."+up+' [role="denominazione"]').html(json.newDenominazione);
                    })
                    .fail (function () {
                        alert("Modifica fallita!");
                        $("."+up+' [role="denominazione"]').html(denominazione);
                    })
                    .always (function () {
                        $(button).html('Modifica');
                        $(button).click(prova);
                        $('tbody '+"."+ up).removeClass(up);
                        if($("input").length == 0)
                            i = 0;
                    })

                $(button).unbind();
                $.post ("ServletControlAdmin", {act: "modify" ,id : code, telefono: newTelefono})
                    .done(function (json) {
                        $("."+up+' [role="telefono"]').html(json.newTelefono);
                    })
                    .fail (function () {
                        alert("Modifica fallita!");
                        $("."+up+' [role="telefono"]').html(telefono);
                    })
                    .always (function () {
                        $(button).html('Modifica');
                        $(button).click(prova);
                        $('tbody '+"."+ up).removeClass(up);
                        if($("input").length == 0)
                            i = 0;
                    })

                $(button).unbind();
                $.post ("ServletControlAdmin", {act: "modify" ,id : code, indirizzo: newIndirizzo})
                    .done(function (json) {
                        $("."+up+' [role="indirizzo"]').html(json.newIndirizzo);
                    })
                    .fail (function () {
                        alert("Modifica fallita!");
                        $("."+up+' [role="indirizzo"]').html(indirizzo);
                    })
                    .always (function () {
                        $(button).html('Modifica');
                        $(button).click(prova);
                        $('tbody '+"."+ up).removeClass(up);
                        if($("input").length == 0)
                            i = 0;
                    })

                $(button).unbind();
                $.post ("ServletControlAdmin", {act: "modify" ,id : code, email: newEmail})
                    .done(function (json) {
                        $("."+up+' [role="email"]').html(json.newEmail);
                    })
                    .fail (function () {
                        alert("Modifica fallita!");
                        $("."+up+' [role="email"]').html(email);
                    })
                    .always (function () {
                        $(button).html('Modifica');
                        $(button).click(prova);
                        $('tbody '+"."+ up).removeClass(up);
                        if($("input").length == 0)
                            i = 0;
                    })

                $(button).unbind();
                $.post ("ServletControlAdmin", {act: "modify" ,id : code, cap: newCap})
                    .done(function (json) {
                        $("."+up+' [role="cap"]').html(json.newCap);
                    })
                    .fail (function () {
                        alert("Modifica fallita!");
                        $("."+up+' [role="cap"]').html(cap);
                    })
                    .always (function () {
                        $(button).html('Modifica');
                        $(button).click(prova);
                        $('tbody '+"."+ up).removeClass(up);
                        if($("input").length == 0)
                            i = 0;
                    })

                $(button).unbind();
                $.post ("ServletControlAdmin", {act: "modify" ,id : code, provincia: newProvincia})
                    .done(function (json) {
                        $("."+up+' [role="provincia"]').html(json.newProvincia);
                    })
                    .fail (function () {
                        alert("Modifica fallita!");
                        $("."+up+' [role="provincia"]').html(provincia);
                    })
                    .always (function () {
                        $(button).html('Modifica');
                        $(button).click(prova);
                        $('tbody '+"."+ up).removeClass(up);
                        if($("input").length == 0)
                            i = 0;
                    })

                $(button).unbind();
                $.post ("ServletControlAdmin", {act: "modify" ,id : code, url: newUrl})
                    .done(function (json) {
                        $("."+up+' [role="url"]').html(json.newUrl);
                    })
                    .fail (function () {
                        alert("Modifica fallita!");
                        $("."+up+' [role="url"]').html(url);
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



