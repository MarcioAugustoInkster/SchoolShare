<%-- 
    Document   : SchollShare
    Created on : Um dia qualquer...
    Author     : Daiana
--%>

<%@page import="web.java.mapping.ListagemArquivos"%>
<%@page import="web.java.classe.PessoaBean"%>
<%@page import="web.java.dao.PessoaDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Portal do Aluno <small>Início</small></h1>
</section>

<section class="content">
    <div class="col-md-8">
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
                <li><a href="#perfil" data-toggle="tab">Meu Perfil</a></li>
                <!--
                <li class="active"><a href="#noticias" data-toggle="tab">Notícias</a></li>
                <li><a href="#calendario" data-toggle="tab">Calendário</a></li>
                <li><a href="#arquivos" data-toggle="tab">Arquivos</a></li>
                <li><a href="#avaliacao" data-toggle="tab">Avaliação</a></li>
                <li><a href="#notas" data-toggle="tab">Provas</a></li>
                <li><a href="#grade" data-toggle="tab">Grade Escolar</a></li>
                <li><a href="#perfil" data-toggle="tab">Meu Perfil</a></li>
                -->
            </ul>
            <%@include file="/aluno/tabs/perfil.jsp" %>
            
            
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
