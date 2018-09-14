<%@page import="web.java.dao.ProfessorDAO"%>
<%@page import="web.java.bean.ProfessorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<a href="/index"> Voltar</a>

<title>SchoolShare - Perfil

    <h2>Dados Pessoais</h2>

    <%ProfessorBean professor = new ProfessorDAO().obterPeloId(1); %>

    <table>
        <thead>
            <tr>
                <th><label for="profId">ID:</label></th>
                <td><%= professor.getId() %></td>
            </tr>
            <tr>
                <th><label for="profNome">Nome:</label></th>
                <td><input type="text" name="nome" class="form-control" value="<%= professor.getNome() %>"></td>
            </tr>
            <tr>
                <th><label for="profSobrenome">Sobrenome:</label></th>
                <td><input type="text" name="sobrenome" class="form-control" value="<%= professor.getSobrenome() %>"></td>
            </tr>
            <tr>
                <th><label for="profSexo">Sexo:</label></th>
                <td><input type="radio" name="sexo" class="form-control" value="<%= professor.getSexo()%>" id="professorSexo"></td>
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
                <td><input type="text" name="dataDeNascimento" class="form-control" value="<%out.print(professor.getDataDeNascimento());%>" id="professorDataDeNascimento"></td>
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