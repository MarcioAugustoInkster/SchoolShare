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
        <li class="active">Matricula Usuários</li>
    </ol>
</section>

<section class="content">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Lista de Instituições Registradas</h3>
        </div>

        <div class="box-body">
            <form method="POST" id="formMatricula" name="registraMatricula">
                <div class="form-group">
                    <input type="text" class="form-control" id="matriculaAluno" name="matriculaAluno"
                           placeholder="Pesquise na tabela por...">
                </div>


                <div class="form-group">
                    <label>Lista de Turmas</label>
                    <select class="form-control" id="matriculaTurma" name="matriculaTurma">
                        <%
                            List<TurmaBean> turma = new TurmaDAO().listaTurma();

                            for (TurmaBean listagem : turma) {
                        %>
                        <option value="<%=listagem.getId()%>"><%=listagem.getTurma()%></option>
                        <% }%>
                    </select>
                </div>

                <div class="form-group">
                    <table id="studentList" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Nome de Aluno</th>
                                <th>Gênero</th>
                                <th>Opções</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<PessoaBean> pessoa = new PessoaDAO().listaAluno();
                                String genero = "";

                                for (PessoaBean listagem : pessoa) {
                                    if (listagem.getSexo() == 'M' || listagem.getSexo() == 'm') {
                                        genero = "<i class='fa fa-mars'></i>";
                                    } else if (listagem.getSexo() == 'F' || listagem.getSexo() == 'f') {
                                        genero = "<i class='fa fa-venus'></i>";
                                    } else {
                                        genero = "?";
                                    }
                                    String nomeCompleto = listagem.getNome() + " " + listagem.getSobrenome();
                            %>
                            <tr>
                                <td><%=listagem.getId()%></td>
                                <td class="elementToCopy"><%=nomeCompleto%></td>
                                <td><%=genero%></td>
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
