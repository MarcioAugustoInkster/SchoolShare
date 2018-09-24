$(document).ready(function () {
    $("#searchListStudent").on("keyup", function () {
        var value = $(this).val().toLowerCase();

        $("#studentList tr").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
        });
    });
});

$('.copyAndPaste').on('click', function () {
    $('#campoMatriculaAluno').val($('.elementToCopy').html());
});
