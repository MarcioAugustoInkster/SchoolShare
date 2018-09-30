<%-- 
    Document   : matricula
    Created on : 21/09/2018, 10:38:14
    Author     : Marcio Augusto Schlosser
--%>

<%@page import="web.java.dao.AlunoDAO"%>
<%@page import="web.java.dao.PessoaDAO"%>
<%@page import="web.java.classe.PessoaBean"%>
<%@page import="web.java.dao.TurmaDAO"%>
<%@page import="web.java.classe.TurmaBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Registro de Matricula <small>Início</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/matriculaIndex.jsp"><i class="fa fa-archive"></i> Matricula</a></li>
        <li class="active">Registro</li>
    </ol>
</section>

<section class="content">
    <div class="box">
        <div class="box-body">
            <form action="/registraMatricula" method="POST" id="formMatricula" name="registraMatricula">
                <input type="hidden" id="idAluno" name="idAluno">
                
                <div class="col-md-6">
                    <div class="form-group">
                        <div class="input-group margin">
                            <input type="text" class="form-control" id="matriculaAluno" name="matriculaAluno"
                               placeholder="Pesquise na tabela por...">
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-block btn-primary">
                                    Matricular&nbsp;<i class="fa fa-user-plus"></i>
                                </button>
                            </span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Escolha uma Turma</label>
                        <select class="form-control" id="matriculaTurma" name="matriculaTurma">
                            <%
                                List<TurmaBean> turma = new TurmaDAO().listaTurma();

                                for (TurmaBean listagem : turma) {
                            %>
                            <option value="<%=listagem.getId()%>">
                                <%=listagem.getCurso().getCurso()%>&nbsp;:&nbsp;<%=listagem.getTurma()%>
                            </option>
                            <% }%>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <table id="listaMatricula" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Nome de Aluno</th>
                                <th>Opções</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<PessoaBean> pessoa = new AlunoDAO().listaAluno();
                                String genero = "";

                                for (PessoaBean listagem : pessoa) {
                            %>
                            <tr>
                                <td><%=listagem.getId()%></td>
                                <td class="elementToCopy"><%=listagem.getNomeCompleto()%></td>
                                <td><a class="btn-custom btn-app-custom copyAndPaste" id="matricula" name="matricula">
                                        <i class="fa fa-check-circle"></i> Confirma</a></td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
