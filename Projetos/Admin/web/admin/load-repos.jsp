<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="web.java.directory.FolderDirectory"%>

<div class="form-group">
    <%
        FolderDirectory dir = new FolderDirectory();

        String curso = request.getParameter("curso");
        List<String> cursos = dir.procuraRepositorioCurso(request, curso);
    %>

    <label for="listaRepoCursos">Selecione um Folder de Curso</label>
    <select class="form-control" id="listaRepoCursos" name="selectRepoCursos">
        <option>[ Cursos ]</option>
        <%
            for (String folders : cursos) {
        %>
        <option value="<%=folders%>"><%=folders%></option>
        <%
            }
        %>
    </select>
</div>

<div class="form-group">
    <%
        //FolderDirectory foldercurso = new FolderDirectory();
        //String folder = request.getParameter("turma");
        //out.print(folder);
        //List<String> cursos = foldercurso.procuraRepositorioCurso(request, folder);
    %>

    <label for="listaRepoTurmas">Selecione um Folder de Curso</label>
    <select class="form-control" id="listaRepoTurmas" name="selectRepoTurmas">
        <%            //for (String folders : cursos) {
        %>
        <option value="<%//=folders%>"><%//=folders%></option>
        <%
            //}
%>
    </select>
</div>