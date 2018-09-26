$(document).ready(function () {
    $("#matriculaAluno").on("keyup", function () {
        var value = $(this).val().toLowerCase();

        $("#listaMatricula tr").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
        });
    });
});
