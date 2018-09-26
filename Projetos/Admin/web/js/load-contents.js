
$(document).ready(function () {
    $("input[name='professorAnoNascimento']").mask('00/00/0000',
            {placeholder: '__/__/____'});
});

$(document).ready(function () {
    $("input[name='alunoAnoNascimento']").mask('00/00/0000',
            {placeholder: '__/__/____'});
});

$(document).ready(function () {
    $("input[name='professorTelefone']").mask('(00) 0000-0000',
            {placeholder: '(__) ____-____'});
});

$(document).ready(function () {
    $("input[name='turmaDataInicio']").mask('00/00/0000',
            {placeholder: '__/__/____'});
});

$(document).ready(function () {
    $("input[name='turmaDataFinal']").mask('00/00/0000',
            {placeholder: '__/__/____'});
});

$(document).ready(function () {
    $("input[name='turmaCargaHora']").mask('000',
            {placeholder: '___'});
});

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
    $("input[name='professorAnoNascimento']").mask('00/00/0000',
            {placeholder: '__/__/____'});
});

$(document).ready(function ($) {
    $("input[name='alunoAnoNascimento']").mask('00/00/0000',
            {placeholder: '__/__/____'});
});

$(document).ready(function ($) {
    $("input[name='professorTelefone']").mask('(00) 0000-0000',
            {placeholder: '(__) ____-____'});
});

$(document).ready(function ($) {
    $("input[name='alunoTelefone']").mask('(00) 0000-0000',
            {placeholder: '(__) ____-____'});
});

$(document).ready(function ($) {
    $("input[name='turmaDataInicio']").mask('00/00/0000',
            {placeholder: '__/__/____'});
});

$(document).ready(function ($) {
    $("input[name='turmaDataFinal']").mask('00/00/0000',
            {placeholder: '__/__/____'});
});

$(document).ready(function ($) {
    $("input[name='turmaCargaHora']").mask('000',
            {placeholder: '___'});
});


