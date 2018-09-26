$(document).ready(function () {
    const $id = $('#idAluno');
    const $input = $('#matriculaAluno');

    $('#listaMatricula tbody').on('click', 'tr', function () {
        var id = $(this).find("td").eq(0).text();
        var aluno = $(this).find("td").eq(1).text();

        $id.val(`${id}`);
        $input.val(`${aluno}`);
    });
});