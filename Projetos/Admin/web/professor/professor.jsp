<%-- 
    Document   : SchollShare
    Created on : Um dia qualquer...

    Author     : Daiana
    Author     : Daiana & Marcio 

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
    <div class="col-md-12">
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#pnoticias" data-toggle="tab">Avisos</a></li>
                <li><a href="#arquivos" data-toggle="tab">Arquivos</a></li>
                <li><a href="#avaliacao" data-toggle="tab">Avaliação</a></li>
                <li><a href="#notas" data-toggle="tab">Provas</a></li>
                <li><a href="#perfil" data-toggle="tab">Meu Perfil</a></li>

            </ul>
            <div class="tab-content">
                <!-- Tab Noticias -->
                <div class="active tab-pane" id="pnoticias">
                    <div class="post clearfix">

                        <%@include file="/aluno/tabs/noticias.jsp" %>
                    </div>
                </div>

                <!-- Tab Arquivos -->
                <div class="tab-pane" id="parquivos">
                    <div class="post">
                        <%@include file="/aluno/tabs/arquivos.jsp" %>
                    </div>

                    <div class="post clearfix">

                    </div>
                </div>

                <!-- Tab Avaliação -->
                <div class="tab-pane" id="pavaliacao">
                    <div class="post clearfix">
                        <%@include file="/aluno/tabs/avaliacao.jsp" %>
                    </div>
                </div>

                <!-- Tab Provas -->
                <div class="tab-pane" id="pnotas">
                    <div class="post clearfix">
                        <div class="form-group">
                            <%@include file="/aluno/tabs/notas.jsp" %>
                        </div>

                        <div class="form-group">
                        </div>
                    </div>
                </div>

                <!-- Tab Perfil -->
                <div class="tab-pane" id="pperfil">
                    <div class="post clearfix">
                        <%@include file="/aluno/tabs/perfil.jsp" %>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
