<%@page import="java.util.Arrays"%>
<%@page import="java.io.FileFilter"%>
<%@page import="java.io.File"%>
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
        <h4>Escolha na lista o destino para repositório de Turmas</h4>
    </div>

    <div class="post clearfix">
        <div class="box-body">
            <form action="/repositorioTurma" method="POST">
                <div class="form-group">
                    <label for="listaEntidades">Selecione um Folder de Instituição</label>
                    <select class="form-control" id="listaEntidades" name="selectFolderEntidades">
                        <option>[ Escolha uma Instituição ]</option>
                        <%
                            FolderDirectory folderinstituicao = new FolderDirectory();
                            List<String> instituicao = folderinstituicao.procuraRepositorioMaster(request);

                            for (String folders : instituicao) {
                        %>
                        <option value="<%=folders%>"><%=folders%></option>
                        <%
                            }
                        %>
                    </select>
                </div>

                <div class="form-group" id="carregaCursos">

                </div>
            </form>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
