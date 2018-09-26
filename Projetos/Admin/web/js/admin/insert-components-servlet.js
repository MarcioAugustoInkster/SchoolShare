$(document).ready(function () {
    const $input = $('#matriculaAluno');

    $('#listaMatricula tbody').on('click', 'tr', function () {
        var aluno = $(this).find("td").eq(1).text();

        $input.val(`${aluno}`);
    });
});