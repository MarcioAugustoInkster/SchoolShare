$(document).ready(function () {
    $("#listaEntidades").on('change', function () {
        var value = $(this).val();

        $('#carregaCursos').load('/admin/load-select.jsp?curso=' + value);
    });
});

$(document).ready(function () {
    $("#listaRepoEntidades").on('change', function () {
        var value = $(this).val();

        $('#carregaRepoCursos').load('/admin/load-repos.jsp?curso=' + value);
    });
});

$(document).ready(function () {
    $('#example').DataTable({
        "pagingType": "full_numbers"
    });
});

$(document).ready(function ($) {
    $(".field-date").mask('00/00/0000',
            {placeholder: '__/__/____'});
});

$(document).ready(function ($) {
    $(".field-phone").mask('(00) 00000-0000',
            {placeholder: '(__) _____-____'});
});

