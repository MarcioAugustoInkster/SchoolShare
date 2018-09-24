<%@page import="web.java.dao.TurmaDAO"%>
<%@page import="web.java.classe.TurmaBean"%>
<%@page import="web.java.dao.PessoaDAO"%>
<%@page import="web.java.classe.PessoaBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Registro de Matricula <small>Início</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Matricula Usuários</li>
    </ol>
</section>

<section class="content">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Criar matrícula para Aluno</h3>
        </div>

        <div class="col-md-12">
            <form action="/registroMatricula" method="POST" role="form">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#instituicao" data-toggle="tab">Instituição</a></li>
                        <li><a href="#curso" data-toggle="tab">Curso</a></li>
                        <li><a href="#turma" data-toggle="tab">Turma</a></li>
                        <li><a href="#aluno" data-toggle="tab">Aluno</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="active tab-pane" id="instituicao">
                            <div class="post">
                                
                            </div>

                            <div class="post clearfix">

                            </div>
                        </div>

                        <div class="tab-pane" id="curso">
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

                        <div class="tab-pane" id="turma">
                            <div class="post">

                            </div>

                            <div class="post clearfix">

                            </div>
                        </div>

                        <div class="tab-pane" id="aluno">
                            <div class="form-group">
                                <label for="campoMatriculaAluno">Nome do Aluno a ser cadastrado</label>
                                <input type="text" class="form-control studentName" id="campoMatriculaAluno" 
                                       name="campoMatriculaAluno">
                            </div>

                            <div class="post clearfix">
                                <h4>Pesquise uma Turma na lista</h4>

                                <div class="form-group">
                                    <div class="input-group input-group-sm">
                                        <input type="text" class="form-control" id="searchListStudent"
                                               placeholder="Nome de Aluno...">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-info btn-flat">Pesquisar</button>
                                        </span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <table id="studentList" class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>Código</th>
                                                <th>Turma</th>
                                                <th>Data Inicio</th>
                                                <th>Data Final</th>
                                                <th>Opções</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                List<TurmaBean> turma = new TurmaDAO().listaTurma();

                                                for (TurmaBean listagem : turma) {
                                            %>
                                            <tr>
                                                <td><%=listagem.getId()%></td>
                                                <td class="elementToCopy"><%=listagem.getTurma()%></td>
                                                <td><%=listagem.getDataInicio()%></td>
                                                <td><%=listagem.getDataFinal()%></td>
                                                <td><a class="btn-custom btn-app-custom copyAndPaste">
                                                        <i class="fa fa-user-plus"></i> Acicionar</a></td>
                                            </tr>
                                            <% }%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
