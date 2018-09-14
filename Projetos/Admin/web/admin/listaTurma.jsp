<%@page import="web.java.dao.PessoaDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Lista de Turnas <small>Tabela</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Admin</li>
    </ol>
</section>

<section class="content">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Lista de Turmas Registradas</h3>
        </div>
        <div class="box-body">
            <%//=PessoaDAO.carregaListaProfessor()%>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
