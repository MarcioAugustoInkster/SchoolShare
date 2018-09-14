package web.java.admin;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class Mensagem {
    public static String folderNaoEncontrado() {
        String mensagem = "";
        
        mensagem += "<section class=\"content\">";
        mensagem += "<div class=\"post clearfix\">";
        mensagem += "<ol class=\"breadcrumb\">";
        mensagem += "<li><a href=\"/index.jsp\"><i class=\"fa fa-folder\"></i> Início</a></li>";
        mensagem += "<li><a href=\"/admin/repoIndex.jsp\"><i class=\"fa fa-folder-open\"></i>";
        mensagem += "&nbsp;Repositório de Arquivos</a></li>";
        mensagem += "<li><a href=\"/admin/repoCurso.jsp\"><i class=\"fa fa-folder-open\"></i> Curso</a></li>";
        mensagem += "<li class=\"active\">Folder</li>";
        mensagem += "</ol>";
        mensagem += "</div>";
        mensagem += "<h2 style=\"color:red;\">Ocorreu um erro!</h2>";
        mensagem += "<h4>O folder requerido não está acessivel ou <b>não existe</b></h4>";
        mensagem += "</section>";
        
        return mensagem;
    }
}
