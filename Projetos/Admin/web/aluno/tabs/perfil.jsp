<%-- 
    Document   : perfil
    Created on : 26/09/2018, 17:56:16
    Author     : Freakazed-PC
--%>

<%@page import="web.java.dao.PessoaDAO"%>
<%@page import="web.java.classe.PessoaBean"%>
<%@page import="web.java.admin.SessaoAdmin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Tab Perfil -->
<div class="tab-pane" id="perfil">
    <div class="post clearfix">
        <%
            String meuPerfil = "";

            if (SessaoAdmin.verificaSessaoAluno(request, response)) {
                meuPerfil = SessaoAdmin.retornaSessao(request);
                out.print(meuPerfil);
                PessoaBean aluno = new PessoaDAO().listaUsuarioPorLogin(meuPerfil);
                out.print(aluno);
        %>

        <h1><%=aluno.getNome() %> <%=aluno.getSobrenome() %></h1>

        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Sexo</th>
                    <td><i class="fa fa-mars"> <%=aluno.getSexo() %></td>
                </tr>
                <tr>
                    <th>Data Nascimento</th>
                    <td>01/01/1990<%=aluno.getDataDeNascimento() %></td>
                </tr>
                <tr>
                    <th>E-Mail</th>
                    <td>pedro@email.com<%=aluno.getEmail() %></td>
                </tr>
                <tr>
                    <th>Telefone</th>
                    <td>(47) 9999-9999<%=aluno.getTelefone() %></td>
                </tr>
                <tr>
                    <th>Login</th>
                    <td>pedrinho<%=aluno.getLogin() %></td>
                </tr>
                <tr>
                    <th>Tipo</th>
                    <td>Aluno<%=aluno.getTipo() %></td>
                </tr>
                <tr>
                    <th>Ativo</th>
                    <td>Sim<%=aluno.isAtivo() %></td>
                </tr>
            </thead>
        </table>

        <div class="form-group">

        </div>
        <% } %>
    </div>
</div>