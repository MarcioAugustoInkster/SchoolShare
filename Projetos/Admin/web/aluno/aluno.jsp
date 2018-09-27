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
    <div class="col-md-12">
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#noticias" data-toggle="tab">Notícias</a></li>
                <li><a href="#calendario" data-toggle="tab">Calendário</a></li>
                <li><a href="#arquivos" data-toggle="tab">Arquivos</a></li>
                <li><a href="#avaliacao" data-toggle="tab">Avaliação</a></li>
                <li><a href="#notas" data-toggle="tab">Provas</a></li>
                <li><a href="#grade" data-toggle="tab">Grade Escolar</a></li>
                <li><a href="#perfil" data-toggle="tab">Meu Perfil</a></li>
            </ul>
            <div class="tab-content">
                <!-- Tab Noticias -->
                <div class="active tab-pane" id="noticias">
                    <div class="post">

                    </div>

                    <div class="post clearfix">

                    </div>
                </div>

                <!-- Tab Calendário -->
                <div class="tab-pane" id="calendario">
                    <div class="post">
                        <h4>Selecione uma Instituição e crie um Curso</h4>

                        <div class="input-group input-group-sm">
                            <div class="form-group">

                            </div>
                        </div>
                    </div>

                    <div class="post clearfix">

                    </div>
                </div>

                <!-- Tab Arquivos -->
                <div class="tab-pane" id="arquivos">
                    <div class="post">
                        <form action="${pageContext.request.contextPath}/fileupload" method="POST" 
                              enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="fileName">Nome do Arquivo a baixar</label>
                                <input type="text" class="form-control" id="fileName" name="file_name" placeholder="Nome do Arquivo">
                                <input type="file" id="inputFile" name="arquivo">
                                <button type="submit">Upload</button>
                                <p class="help-block">Exemplo: .doc, .pdf, .txt, etc</p>
                            </div>
                        </form>
                              
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Opções de Arquivos</h3>
                                </div>
                                <div class="box-body">
                                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-default">
                                        Procurar Arquivo
                                    </button>
                                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-info">
                                        Enviar para um Colega
                                    </button>
                                </div>
                            </div>
                        </div>

                        <div class="listaArquivo"></div>
                    </div>

                    <div class="post clearfix">

                    </div>
                </div>

                <!-- Tab Avaliação -->
                <div class="tab-pane" id="avaliacao">
                    <div class="post clearfix">
                        <%@include file="/aluno/tabs/avaliacao.jsp" %>
                    </div>
                </div>

                <!-- Tab Provas -->
                <div class="tab-pane" id="notas">
                    <div class="post clearfix">
                        <h4>Pesquise uma Turma na lista</h4>

                        <div class="form-group">

                        </div>

                        <div class="form-group">

                        </div>
                    </div>
                </div>

                <!-- Tab Grade Escolar -->
                <div class="tab-pane" id="grade">
                    <div class="post clearfix">
                        <h4>Pesquise uma Turma na lista</h4>

                        <div class="form-group">

                        </div>

                        <div class="form-group">

                        </div>
                    </div>
                </div>

                <!-- Tab Perfil -->
                <div class="tab-pane" id="perfil">
                    <div class="post clearfix">
                        <%@include file="/aluno/tabs/perfil.jsp" %>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
