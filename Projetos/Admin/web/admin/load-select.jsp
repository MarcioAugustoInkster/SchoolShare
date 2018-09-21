<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="web.java.directory.FolderDirectory"%>

<label for="listaCursos">Selecione um Folder de Curso</label>
<select class="form-control" id="listaCursos" name="selectFolderCursos">
    <%
        FolderDirectory foldercurso = new FolderDirectory();
        
        String folder = request.getParameter("curso");
        List<String> cursos = foldercurso.procuraRepositorioCurso(request, folder);

        for (String folders : cursos) {
    %>
    <option value="<%=folders%>"><%=folders%></option>
    <%
        }
    %>
</select>

<%
    /*
        File file = new File("D:\\Entra21\\Projects\\SchoolShare\\Projetos\\Admin\\arquivos\\MKInst02\\");
        String[] names = file.list();

        for (String name : names) {
            if (new File("D:\\Entra21\\Projects\\SchoolShare\\Projetos\\Admin\\arquivos\\MKInst02\\" + name).isDirectory()) {
                out.println(name);
            }
        }
     */
%>


