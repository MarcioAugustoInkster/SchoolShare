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
<<<<<<< HEAD
            <div class="form-group">
<<<<<<< HEAD
                <input type="text" class="form-control" id="matriculaAluno" name="matriculaAluno"
                    placeholder="Pesquise na tabela por...">
            </div>

            <!--<form method="POST" id="formMatricula" name="registraMatricula">-->
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
=======
<<<<<<< HEAD
            <div class="form-group">
=======
>>>>>>> a6a3c2ab62bb1af6d748a6be831c397528829d13
                <input type="text" class="form-control" id="searchListStudent"
                       placeholder="Nome de Aluno...">
            </div>

            <div class="form-group">
                <form action="/registraMatricula" method="POST">
                    <div class="form-group">
                        <select class="form-control" id="selectMatriculaTurma" name="listaMatriculaTurma">
                            <%
                                List<TurmaBean> turma = new TurmaDAO().listaTurma();

                                for (TurmaBean listagem : turma) {
                            %>
                            <option value="<%=listagem.getId()%>"><%=listagem.getTurma() %></option>                            
                            <% } %>
                        </select>
                    </div>


<<<<<<< HEAD
>>>>>>> a6a3c2ab62bb1af6d748a6be831c397528829d13
=======
>>>>>>> a6a3c2ab62bb1af6d748a6be831c397528829d13
                    <table id="studentList" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Código</th>
<<<<<<< HEAD
<<<<<<< HEAD
                                <th>Nome de Aluno</th>
                                <th>Gênero</th>
                                <th>Ativo</th>
=======
                                <th>Nome Completo</th>
                                <th>Opções</th>
>>>>>>> a6a3c2ab62bb1af6d748a6be831c397528829d13
=======
                                <th>Nome Completo</th>
                                <th>Opções</th>
>>>>>>> a6a3c2ab62bb1af6d748a6be831c397528829d13
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<PessoaBean> pessoa = new PessoaDAO().listaAluno();
<<<<<<< HEAD
<<<<<<< HEAD
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
                                <td class="elementToCopy"><%=nomeCompleto %></td>
                                <td><%=genero%></td>
                                <td><a class="btn-custom btn-app-custom copyAndPaste" id="matricula" name="matricula">
                                    <i class="fa fa-user-plus"></i> Adicionar</a></td>
=======
=======
>>>>>>> a6a3c2ab62bb1af6d748a6be831c397528829d13

                                for (PessoaBean listagem : pessoa) {
                            %>
                            <tr>
                                <td><%=listagem.getId()%></td>
                                <td><%=listagem.getNome() %>&nbsp;<%=listagem.getSobrenome() %></td>
                                <td><a class="btn-custom btn-app-custom copyAndPaste">
                                        <i class="fa fa-user-plus"></i> Adicionar</a></td>
<<<<<<< HEAD
>>>>>>> a6a3c2ab62bb1af6d748a6be831c397528829d13
=======
>>>>>>> a6a3c2ab62bb1af6d748a6be831c397528829d13
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
<<<<<<< HEAD
<<<<<<< HEAD
                </div>
            <!--</form>-->
=======
=======
>>>>>>> a6a3c2ab62bb1af6d748a6be831c397528829d13
                </form>
            </div>
=======
            <input type="text" class="form-control" id="searchListStudent"
                   placeholder="Nome de Aluno...">
            <span class="input-group-btn">
                <button type="button" class="btn btn-info btn-flat">Pesquisar</button>
            </span>

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
                                <i class="fa fa-user-plus"></i> Adicionar</a></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
>>>>>>> e5316023176d6e5758be322ec26b74db5f8435a5
<<<<<<< HEAD
>>>>>>> a6a3c2ab62bb1af6d748a6be831c397528829d13
=======
>>>>>>> a6a3c2ab62bb1af6d748a6be831c397528829d13
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
