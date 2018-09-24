
$(document).ready(function () {
    $("#listaEntidades").on('change', function () {
        var value = $(this).val();

        $('#carregaCursos').load('/admin/load-select.jsp?curso=' + value);
    });

    $("#listaRepoEntidades").on('change', function () {
        var value = $(this).val();

        $('#carregaRepoCursos').load('/admin/load-repos.jsp?curso=' + value);
    });
    
    $('#example').DataTable( {
        "pagingType": "full_numbers"
    });
});

