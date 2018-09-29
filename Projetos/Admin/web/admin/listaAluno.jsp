<%@page import="web.java.dao.AlunoDAO"%>
<%@page import="web.java.classe.PessoaBean"%>
<%@page import="java.util.List"%>
<%@page import="web.java.dao.AlunoDAO"%>

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
            <table id="tabelaAluno" class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Nome Completo</th>
                        <th>Data Nascimento</th>
                        <th>E-mail</th>
                        <th>Telefone</th>
                        <th>Usuário</th>
                        <th>Ativo</th>
                        <th>Opções</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<PessoaBean> aluno = new AlunoDAO().listaAluno();
                        for (PessoaBean listagem : aluno) {
                            String active = "";

                            if (listagem.isAtivo() != false) {
                                active = "Sim";
                            } else {
                                active = "Não";
                            }
                    %>
                    <tr>
                        <td><%=listagem.getNomeCompleto()%></td>
                        <td><%=listagem.getDataDeNascimento()%></td>
                        <td><%=listagem.getEmail()%></td>
                        <td><%=listagem.getTelefone()%></td>
                        <td><%=listagem.getLogin()%></td>
                        <td><%=active%></td>
                        <td><a class="btn-custom btn-app-custom"><i class="fa fa-edit"></i> Edit</a></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
