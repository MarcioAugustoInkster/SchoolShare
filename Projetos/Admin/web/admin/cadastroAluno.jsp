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
                    <div class="form-group">
                        <label for="campoAlunoNome">Nome Completo
                        <span class="campo-obrigatorio">*</span></label>
                        <input type="text" class="form-control" id="campoAlunoNome" name="alunoNome">
                        <span id="erroNomeAluno" class="alerta-validacao col-md-12 col-lg-12"></span>
                    </div>

                    <div class="form-group">
                        <label for="radioAlunoMasc">
                            <input type="radio" class="" id="radioAlunoMasc" name="alunoGenero" value="1" checked>
                            &nbsp;&nbsp;Masculino
                        </label>
                        <label for="radioAlunoFem">&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" class="" id="radioAlunoFem" name="alunoGenero" value="2">
                            &nbsp;&nbsp;Feminino</label>
                    </div>

                    <div class="form-group">
                        <label for="campoAnoAluno">Data de Nascimento
                        <span class="campo-obrigatorio">*</span></label>
                        <input type="text" class="form-control field-date" id="campoAnoAluno" name="alunoAnoNascimento">
                        <span id="erroDataAluno" class="alerta-validacao col-md-12 col-lg-12"></span>
                    </div>

                    <div class="form-group">
                        <label for="campoEmailAluno">E-mail
                        <span class="campo-obrigatorio">*</span></label>
                        <input type="text" class="form-control" id="campoEmailAluno" name="alunoEmail">
                        <span id="erroEmailAluno" class="alerta-validacao col-md-12 col-lg-12"></span>
                    </div>

                    <div class="form-group">
                        <label for="campoTelefoneAluno">Telefone
                        <span class="campo-obrigatorio">*</span></label>
                        <input type="text" class="form-control field-phone" id="campoTelefoneAluno" name="alunoTelefone">
                        <span id="erroPhoneAluno" class="alerta-validacao col-md-12 col-lg-12"></span>
                    </div>

                    <div class="form-group">
                        <label for="campoLoginAluno">Login de Acesso (Mínimo 5 digitos)
                        <span class="campo-obrigatorio">*</span></label>
                        <input type="text" class="form-control" id="campoLoginAluno" name="alunoLogin">
                        <span id="erroLoginAluno" class="alerta-validacao col-md-12 col-lg-12"></span>
                    </div>

                    <div class="form-group">
                        <label for="campoSenhaAluno">Senha (Mínimo 6 digitos)
                        <span class="campo-obrigatorio">*</span></label>
                        <input type="password" class="form-control" id="campoSenhaAluno" name="alunoSenha">
                        <span id="erroSenhaAluno" class="alerta-validacao col-md-12 col-lg-12"></span>
                    </div>

                    <div class="form-group">
                        <label for="campoSenhaRepetirAluno">Confirmar Senha (Mínimo 6 digitos)
                        <span class="campo-obrigatorio">*</span></label>
                        <input type="password" class="form-control" id="campoSenhaRepetirAluno" name="alunoSenhaRepetir">
                        <span id="erroRepeteAluno" class="alerta-validacao col-md-12 col-lg-12"></span>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-primary" id="submitAluno">Cadastrar</button>
                        <button type="reset" class="btn btn-primary" id="resetAluno">Limpar Campos</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
