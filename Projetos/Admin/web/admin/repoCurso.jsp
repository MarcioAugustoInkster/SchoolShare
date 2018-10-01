<%@page import="web.java.dao.CursoDAO"%>
<%@page import="web.java.classe.CursoBean"%>
<%@page import="web.java.directory.FolderDirectory"%>
<%@page import="java.util.List"%>
<%@page import="web.java.dao.InstituicaoDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Instituições <small>Repositório</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/repoIndex.jsp"><i class="fa fa-folder"></i> Repositório de Arquivos</a></li>
        <li class="active">Curso</li>
    </ol>
</section>

<section class="content">
    <div class="post">
        <h4>Escolha um folder de Instituição</h4>
    </div>

    <div class="post clearfix">
        <form action="/criarRepoCurso" method="POST">
            <div class="form-group">
                <label>Selecione um folder de Instituição</label>
                <select class="form-control" name="folderInstList" id="folderInstList">
                    <%
                        FolderDirectory folder = new FolderDirectory();
                        List<String> instituicao = folder.procuraRepositorioMaster(request);
                        int counter = 0;

                        for (String folders : instituicao) {
                            counter = counter + 1;
                    %>
                    <option value="<%=folders%>"><%=folders%></option>
                    <%
                        }
                    %>
                </select>
            </div>

            <div class="form-group">
                <label>Selecione um Curso</label>
                <%
                    List<CursoBean> curso = new CursoDAO().listaCurso();
                %>
                <select class="form-control" id="folderCursoList" name="folderCursoList">
                    <%
                        for (CursoBean cursos : curso) {
                    %>
                    <option value="<%=cursos.getCurso()%>"><%=cursos.getCurso()%></option>
                    <%
                        }
                    %>
                </select>
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary">Criar Reposiório</button>
            </div>
        </form>
    </div>

    <div class="post">
        <% if (counter == 0) { %>
        <label>Não existe ainda folders disponíveis</label>
        <% } else {%>
        <label>Existem&nbsp;<%=counter%>&nbsp;folders disponíveis</label>
        <% }%>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
