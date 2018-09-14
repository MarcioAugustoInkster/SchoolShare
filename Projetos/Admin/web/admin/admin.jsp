<%@page import="web.java.dao.AdminDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Painel de Administrador <small>Início</small></h1>
    <ol class="breadcrumb">
        <li><a href="/home"><i class="fa fa-dashboard"></i> Index</a></li>
        <li class="active">Gerenciar Admin</li>
    </ol>
</section>

<section class="content">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Administradores do Sistema</h3>
        </div>
        <div class="box-body">
            <%= AdminDAO.carregaListaAdmin()%>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
