<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (SessaoAdmin.verificaSessao(request, response)) {
%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Cadastro de Professor</h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp">
            <i class="fa fa-user-secret"></i> Admin</a></li>
        <li class="active">Gerenciamento de Professor</li>
    </ol>
    <%@include file="/master/sessao.jsp" %>
</section>

<form action="/CadastroProfessor" method="POST" id="formCadastroProfessor">
    <table class="form-user-register">
        <tr>
            <th><label for="cadastraCampoProf">Nome do Professor</label></th>
            <td><input type="text" class="form-control" name="professorNome" id="cadastraCampoProf"></td>
        </tr>
        <tr>
            <th><label for="cadastraCampoEmail">E-mail</label></th>
            <td><input type="text" class="form-control" name="professorEmail" id="cadastraCampoEmail"></td>
        </tr>
        <tr>
            <th><label>Sexo</label></th>
            <td><label><input type="radio" name="professorSexo" id="cadastraSexoMasc" value="M">
                &nbsp;&nbsp;Masculino</label>&nbsp;&nbsp;&nbsp;&nbsp;
                <label><input type="radio" name="professorSexo" id="cadastraSexoFem" value="F">
                &nbsp;&nbsp;Feminino</label>
            </td>
        </tr>
        <tr>
            <th><label for="cadastraCampoNascimento">Data Nascimento</label></th>
            <td><input type="text" name="professorNascimento" id="cadastraCampoNascimento" class="form-control"></td>
        </tr>
        <tr>
            <th><label for="cadastraCampoLogin">Login de Acesso</label></th>
            <td><input type="text" class="form-control" name="professorUsuario" id="cadastraCampoLogin"></td>
        </tr>
        <tr>
            <th><label for="cadastraCampoSenha">Nova Senha</label></th>
            <td><input type="password" class="form-control" name="professorSenha" id="cadastraCampoSenha"></td>
        </tr>
        <tr>
            <th><label for="cadastraRepeteSenha">Confirma Nova Senha</label></th>
            <td><input type="password" class="form-control" name="professorRepeteSenha" id="cadastraRepeteSenha"></td>
        </tr>
        <tr>
            <th><label for="cadastraNivelAcesso">Nível Acesso</label></th>
            <td><select name="professorNivel" id="cadastraNivelAcesso" class="form-control">
                    <option value="1">Nivel Admin</option>
                    <option value="2">Nivel Professor</option>
                    <option value="3">Nivel Aluno</option>
                </select>
            </td>
        </tr>
        <tr>
            <th><br/></th>
            <td><label><input type="checkbox" id="cadastraAtivo" name="professorAtivo">
                &nbsp;&nbsp;Ativo</label></td>
        </tr>
        <tr>
            <th><br/></th>
            <td><button type="submit" id="btnProfessorInsere" name="professorSubmit">Cadastra</button>
                <button type="reset" id="btnProfessorLimpa" name="professorLimpa">Limpa Campos</button>
            </td>
        </tr>
    </table>
</form>

<%@include file="/master/rodape.jsp" %>

<%
    }
%>