<%@page import="web.java.bean.PessoaBean"%>
<%@page import="web.java.dao.ProfessorDAO"%>
<%@page import="web.java.bean.ProfessorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<a href="/index"> Voltar</a>

<title>SchoolShare - Perfil

    <h2>Dados Pessoais</h2>

    <%PessoaBean professor = new ProfessorDAO().obterPeloId(1); %>

    <table>
        <thead>
            <tr>
                <th><label for="profId">ID:</label></th>
                <td><%= professor.getId() %></td>
            </tr>
            <tr>
                <th><label for="profNome">Nome:</label></th>
                <td><%= professor.getNome() %>"></td>
            </tr>
            <tr>
                <th><label for="profSobrenome">Sobrenome:</label></th>
                <td><%= professor.getSobrenome() %>"></td>
            </tr>
            <tr>
                <th><label for="profSexo">Sexo:</label></th>
                <td><%= professor.getSexo()%></td>
            </tr>
            <tr>
                <th><label for="profSenha">Senha</label></th>
                <td><input type="password" name="senha" class="form-control" value="" id="professorSenha"></td>
            </tr>
            <tr>
                <th><label for="profRepeteSenha">Repetir Senha</label></th>
                <td><input type="password" name="repetirSenha" class="form-control" value="" id="professorRepeteSenha" </td>
            </tr>
            <tr>
                <th><label for="profDataDeNascimento">Data de Nascimento:</label></th>
                <td><%= professor.getDataDeNascimento()%></td>
            </tr>
            <tr>
                <th><label for="nivelProf">Nível de Acesso:</label></th>
                <td><%= professor.getNivel() %></td>
            </tr>
            <tr>
                <th><label for="profAtivo">Ativo:</label></th>
                <td><input type="checkbox" name="ativo" class="form-control" 
	    value="<%= professor.isAtivo() %>" id="professorAtivo"></td>
            </tr>
        </thead>
    </table>



    <%@include file="/master/rodape.jsp" %>