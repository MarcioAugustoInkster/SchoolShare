$(document).ready(function () {
    $("#matriculaAluno").on("keyup", function () {
        var value = $(this).val().toLowerCase();

        $("#listaMatricula tr").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
        });
    });
});

$(document).ready(function () {
    $("#consultaListaAluno").on("keyup", function () {
        var value = $(this).val().toLowerCase();

        $("#tabelaAluno tr").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
        });
    });
});

$(document).ready(function () {
    $("#consultaListaProfessor").on("keyup", function () {
        var value = $(this).val().toLowerCase();

        $("#tabelaProfessor tr").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
        });
    });
});

