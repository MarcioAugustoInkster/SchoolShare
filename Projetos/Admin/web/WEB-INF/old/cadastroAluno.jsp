<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (SessaoAdmin.verificaSessao(request, response)) {
%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Cadastro de Aluno</h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp">
            <i class="fa fa-user-secret"></i> Admin</a></li>
        <li class="active">Gerenciamento de Aluno</li>
    </ol>
    <%@include file="/master/sessao.jsp" %>
</section>

<form action="/cadastroAluno" method="POST" id="formCadastroAluno">
    <table class="form-user-register">
        <tr>
            <th><label for="cadastraCampoAluno">Nome do Aluno</label></th>
            <td><input type="text" class="form-control" name="alunoNome" id="cadastraCampoAluno"></td>
        </tr>
        <tr>
            <th><label for="cadastraCampoEmail">E-mail</label></th>
            <td><input type="text" class="form-control" name="alunoEmail" id="cadastraCampoEmail"></td>
        </tr>
        <tr>
            <th><label>Sexo</label></th>
            <td><label><input type="radio" name="alunoSexo" id="cadastraSexoMasc" value="M">
                &nbsp;&nbsp;Masculino</label>&nbsp;&nbsp;&nbsp;&nbsp;
                <label><input type="radio" name="alunoSexo" id="cadastraSexoFem" value="F">
                &nbsp;&nbsp;Feminino</label>
            </td>
        </tr>
        <tr>
            <th><label for="cadastraCampoNascimento">Data Nascimento</label></th>
            <td><input type="text" name="alunoNascimento" id="cadastraCampoNascimento" class="form-control"></td>
        </tr>
        <tr>
            <th><label for="cadastraCampoLogin">Login de Acesso</label></th>
            <td><input type="text" class="form-control" name="alunoUsuario" id="cadastraCampoLogin"></td>
        </tr>
        <tr>
            <th><label for="cadastraCampoSenha">Nova Senha</label></th>
            <td><input type="password" class="form-control" name="alunoSenha" id="cadastraCampoSenha"></td>
        </tr>
        <tr>
            <th><label for="cadastraRepeteSenha">Confirma Nova Senha</label></th>
            <td><input type="password" class="form-control" name="alunoRepeteSenha" id="cadastraRepeteSenha"></td>
        </tr>
        <tr>
            <th><label for="cadastraNivelAcesso">Nível Acesso</label></th>
            <td><select name="alunoNivel" id="cadastraNivelAcesso" class="form-control">
                    <option value="1">Nivel Admin</option>
                    <option value="2">Nivel Professor</option>
                    <option value="3">Nivel Aluno</option>
                </select>
            </td>
        </tr>
        <tr>
            <th><br/></th>
            <td><label><input type="checkbox" id="cadastraAtivo" name="alunoAtivo">
                &nbsp;&nbsp;Ativo</label></td>
        </tr>
        <tr>
            <th><br/></th>
            <td><button type="submit" id="btnAlunoInsere" name="alunoSubmit">Cadastra</button>
                <button type="reset" id="btnAlunoLimpa" name="alunoLimpa">Limpa Campos</button>
            </td>
        </tr>
    </table>
</form>

<%@include file="/master/rodape.jsp" %>

<%
    }
%>