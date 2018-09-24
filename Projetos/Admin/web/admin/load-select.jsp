<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="web.java.directory.FolderDirectory"%>

<div class="form-group">
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
</div>

<div class="form-group">
    <label for="campoTurmaNome">Descrição da Turma</label>
    <small>&nbsp;&nbsp;&nbsp;Exemplo: TURM-01</small>
    <input type="text" class="form-control" id="campoTurmaNome" name="turmaDescricao">
</div>

<div class="form-group">
    <input type="submit" value="Criar Repositório" class="btn btn-primary">
</div>



