<%@page import="java.util.List"%>
<%@page import="web.java.directory.FolderDirectory"%>

<div class="form-group">
    <%
        //FolderDirectory foldercurso = new FolderDirectory();

        //String folder = request.getParameter("turma");
        //out.print(folder);
        //List<String> cursos = foldercurso.procuraRepositorioCurso(request, folder);
    %>

    <label for="listaRepoTurmas">Selecione um Folder de Curso</label>
    <select class="form-control" id="listaRepoTurmas" name="selectRepoTurmas">
        <%
            //for (String folders : cursos) {
        %>
        <option value="<%//=folders%>"><%//=folders%></option>
        <%
            //}
        %>
    </select>
</div>
