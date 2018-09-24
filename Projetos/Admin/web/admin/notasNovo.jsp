<%-- 
    Document   : notasNovo
    Created on : 23/09/2018, 15:47:48
    Author     : Marcio Augusto Schlosser
--%>

<%@page import="web.java.dao.PessoaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Lista de Alunos <small>Tabela</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/notasIndex.jsp"><i class="fa fa-sticky-note"></i> Notas</a></li>
        <li class="active">Lançar Nota</li>
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
