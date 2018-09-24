<%-- 
    Document   : cadastroDaiana
    Created on : 03/09/2018, 08:24:29
    Author     : Daiana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Alunos <small>Cadastro</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/alunoIndex.jsp"><i class="fa fa-users"></i> Alunos</a></li>
        <li class="active">Registrar</li>
    </ol>
</section>

<section class="content">
<div class="row">
    <div class="col-md-6">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Cadastro de Alunos</h3>
            </div>
            
            <form action="/registroAluno" method="POST" role="form">
                <div class="box-body">
                    <div class="form-group">
                        <label for="campoAlunoNome">Nome do Aluno</label>
                        <input type="text" class="form-control" id="campoAlunoNome" name="alunoNome">
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="campoAlunoSobrenome">Sobrenome</label>
                        <input type="text" class="form-control" id="campoAlunoSobrenome" name="alunoSobrenome">
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="radioAlunoMasc">
                            <input type="radio" class="" id="radioAlunoMasc" name="alunoGenero" value="M" checked>
                            &nbsp;&nbsp;Masculino</label>
                        <label for="radioAlunoFem">&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" class="" id="radioAlunoFem" name="alunoGenero" value="F">
                            &nbsp;&nbsp;Feminino</label>
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="campoAnoAluno">Data de Nascimento</label>
                        <input type="text" class="form-control" id="campoAnoAluno" name="alunoAnoNascimento">
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="campoEmailAluno">E-mail</label>
                        <input type="text" class="form-control" id="campoEmailAluno" name="alunoEmail">
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="campoTelefoneAluno">Telefone</label>
                        <input type="text" class="form-control" id="campoTelefoneAluno" name="alunoTelefone">
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="campoLoginAluno">Login de Acesso</label>
                        <input type="text" class="form-control" id="campoLoginAluno" name="alunoLogin">
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="campoSenhaAluno">Senha</label>
                        <input type="text" class="form-control" id="campoSenhaAluno" name="alunoSenha">
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="campoSenhaRepetirAluno">Confirmar Senha</label>
                        <input type="text" class="form-control" id="campoSenhaRepetirAluno" name="alunoSenhaRepetir">
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="checkAtivoAluno">
                        <input type="checkbox" id="checkAtivoAluno" name="alunoCheckAtivo" >
                        &nbsp;&nbsp;Ativo</label>
                    </div>
                </div>

                <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Cadastrar</button>
                    <button type="reset" class="btn btn-primary">Limpar Campos</button>
                </div>
            </form>
        </div>
    </div>
</div>
</section>

<%@include file="/master/rodape.jsp" %>
