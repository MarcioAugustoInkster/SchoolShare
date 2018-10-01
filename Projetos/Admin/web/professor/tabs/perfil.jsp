<%-- 
    Document   : perfil
    Created on : 26/09/2018, 17:56:16
    Author     : Marcio Augusto Schlosser
--%>

<%@page import="web.java.dao.AlunoDAO"%>
<%@page import="web.java.mapping.DataFormatter"%>
<%@page import="java.util.List"%>
<%@page import="web.java.dao.PessoaDAO"%>
<%@page import="web.java.classe.PessoaBean"%>
<%@page import="web.java.admin.SessaoAdmin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Tab Perfil -->
<div class="user-profile">
    <%
        String meuPerfil = "";

        if (SessaoAdmin.verificaSessaoAluno(request, response)) {
            meuPerfil = SessaoAdmin.retornaSessao(request);
            DataFormatter df = new DataFormatter();
            
            PessoaBean aluno = new AlunoDAO().listaAlunoPorLogin(meuPerfil);

            String anoNascimento = df.dataParaBR(aluno.getDataDeNascimento());
    %>
    <div class="col-md-6">
        <div class="form-group">
            <div class="box box-primary">
                <div class="box-body box-profile">
                    <img class="profile-user-img img-responsive img-circle" src="/img/users/no-user-set.jpg" alt="User profile picture">

                    <h3 class="profile-username text-center">
                        <%=aluno.getNomeCompleto()%>
                    </h3>

                    <p class="text-muted text-center"></p>

                    <ul class="list-group list-group-unbordered">
                        <li class="list-group-item">
                            <b>Nascido em</b> <a class="pull-right"><%=anoNascimento%></a>
                        </li>
                        <li class="list-group-item">

                            <b>E-mail</b> <a class="pull-right"><%=aluno.getEmail()%></a>
                        </li>
                        <li class="list-group-item">
                            <b>Telefone</b> <a class="pull-right"><%=aluno.getTelefone()%></a>
                        </li>
                        <li class="list-group-item">
                            <b>Usuário</b> <a class="pull-right"><%=aluno.getLogin()%></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="form-group">

    </div>
    <% }%>
</div>