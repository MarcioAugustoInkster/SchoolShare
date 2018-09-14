<%@page import="web.java.dao.InstituicaoDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Instituição <small>Repositório</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-folder"></i> Início</a></li>
        <li><a href="/admin/repoIndex.jsp"><i class="fa fa-folder-open"></i> Repositório de Arquivos</a></li>
        <li class="active">Instituição</li>
    </ol>
</section>

<section class="content">
    <div class="post">
        <h4>Selecione uma Instituição e crie um repositório</h4>

        <div class="input-group input-group-sm">
            <input type="text" class="form-control">
            <span class="input-group-btn">
                <button type="button" class="btn btn-info btn-flat">Pesquisar</button>
            </span>
        </div>
    </div>

    <div class="post clearfix">
        <%=InstituicaoDAO.listaInstituicaoRepo()%>
    </div>

    <div class="post">

    </div>
</section>

<%@include file="/master/rodape.jsp" %>
