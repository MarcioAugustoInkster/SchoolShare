$(document).ready(function () {
    $(".copyAndPaste").click(function () {

        const $selects = $('#matriculaTurma');
        const $input = $('#matriculaAluno');
        
        const $selectOne = $selects.eq(0);

        $input.val(`${$selectOne.find(':selected').text()}`);
    });
});