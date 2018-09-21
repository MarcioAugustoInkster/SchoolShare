/*
$(document).ready(function () {
    var listagem = "";
    
    listagem += "<li><span class=\"icon-box-folder\">";
    listagem += "<i class=\"fa fa-archive\">";
    listagem += "<a href=\"#\">XXX</a>";
    listagem += "</i></span></li>";
    
    $(".listagemEmpresa").click(function () {
        $.ajax({
            success: function () {
                $(".listagemCurso").html(
                    listagem
                );
            }
        });
    });
});
*/

$(document).ready(function(){
    $("#listaEntidades").on('change', function () {
        var value = $(this).val();
        
        $('#carregaCursos').load('/admin/load-select.jsp?curso=' + value);
    });
});