<%-- 
    Document   : repositorioCurso
    Created on : 01/10/2018, 01:46:37
    Author     : Freakazed-PC
--%>

<%@page import="web.java.dao.CursoDAO"%>
<%@page import="web.java.classe.CursoBean"%>
<%@page import="java.util.List"%>
<%@page import="web.java.directory.FolderDirectory"%>
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
        <h4>Escolha um folder de Curso</h4>
    </div>

    <div class="post clearfix">
        <form action="/cursoview" method="POST">
            <div class="form-group">
                <%
                    List<CursoBean> curso = new CursoDAO().listaCurso();
                %>
                
                <label>Escolha um Curso</label>
                <select class="form-control" id="listaCursoParaRepositorio" name="listaCursoParaRepositorio">
                <%
                    if (FolderDirectory.caminhoAtual != null) {
                        for (CursoBean cursos : curso) {
                %> 
                <option value="<%=cursos.getCurso() %>"><%=cursos.getCurso() %></option>
                <%
                        }
                    }
                %>
                </select>
            </div>

            <div class="form-group">
                <button type="submit" id="listFolders" class="btn btn-primary">Avançar</button>
            </div>
        </form>
    </div>

    <div class="post">
        
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
