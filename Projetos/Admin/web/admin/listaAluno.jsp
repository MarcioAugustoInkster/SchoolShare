<%@page import="web.java.dao.PessoaDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Lista de Alunos <small>Tabela</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/alunoIndex.jsp"><i class="fa fa-users"></i> Alunos</a></li>
        <li class="active">Ver Lista</li>
    </ol>
</section>

<section class="content">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Lista de Alunos Registrados</h3>
        </div>
        <div class="box-body">
            <%=PessoaDAO.carregaListaAluno()%>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
