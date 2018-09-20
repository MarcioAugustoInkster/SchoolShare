<%@page import="java.util.List"%>
<%@page import="web.java.directory.FolderDirectory"%>

<%
    FolderDirectory folder = new FolderDirectory();
    List<String> cursos = folder.findFoldersInDirectory(request, 2);
    int counter = 0;

    for (String folders : cursos) {
        counter = counter + 1;
%>
<li>
    <span class="icon-box-folder">
        <i class="fa fa-archive">
            <a href="#" class="listaEmpresa"><%=folders%></a>
        </i>
    </span>
</li>
<%
    }
%>


