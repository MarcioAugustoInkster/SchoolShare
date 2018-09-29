<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Professores <small>Cadastro</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/professorIndex.jsp"><i class="fa fa-address-card"></i> Professores</a></li>
        <li class="active">Registrar</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Cadastro de Professor</h3>
                </div>

                <div class="box-body">
                    <form action="/registroProfessor" method="POST" role="form">
                        <div class="form-group">
                            <label for="campoProfessorNome">Nome do Professor
                                <span class="campo-obrigatorio">*</span></label>
                            <input type="text" class="form-control" id="campoProfessorNome" 
                                   name="professorNome">
                            <span id="erroNomeProfessor" class="alerta-validacao col-md-12 col-lg-12"></span>
                        </div>
                        <div class="form-group">
                            <label for="radioProfessorMasc">
                                <input type="radio" class="" id="radioProfessorMasc" 
                                       name="professorGenero" value="1" checked>&nbsp;&nbsp;Masculino
                                <span class="campo-obrigatorio">*</span></label>
                            <label for="radioProfessorFem">&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" class="" id="radioProfessorFem" 
                                       name="professorGenero" value="2">&nbsp;&nbsp;Feminino</label>
                        </div>
                        <div class="form-group">
                            <label for="campoAnoProfessor">Data de Nascimento
                                <span class="campo-obrigatorio">*</span></label>
                            <input type="text" class="form-control field-date" id="campoAnoProfessor" 
                                   name="professorAnoNascimento">
                            <span id="erroDataProfessor" class="alerta-validacao col-md-12 col-lg-12"></span>
                        </div>
                        <div class="form-group">
                            <label for="campoEmailProfessor">E-mail
                                <span class="campo-obrigatorio">*</span></label>
                            <input type="text" class="form-control" id="campoEmailProfessor" 
                                   name="professorEmail">
                            <span id="erroEmailProfessor" class="alerta-validacao col-md-12 col-lg-12"></span>
                        </div>
                        <div class="form-group">
                            <label for="campoTelefoneProfessor">Telefone
                            <span class="campo-obrigatorio">*</span></label>
                            <input type="text" class="form-control field-phone" id="campoTelefoneProfessor" 
                                   name="professorTelefone">
                            <span id="erroPhoneProfessor" class="alerta-validacao col-md-12 col-lg-12"></span>
                        </div>
                        <div class="form-group">
                            <label for="campoLoginProfessor">Login de Acesso (Mínimo 5 caracteres)
                            <span class="campo-obrigatorio">*</span></label>
                            <input type="text" class="form-control" id="campoLoginProfessor" 
                                   name="professorLogin">
                            <span id="erroLoginProfessor" class="alerta-validacao col-md-12 col-lg-12"></span>
                        </div>
                        <div class="form-group">
                            <label for="campoSenhaProfessor">Senha (Mínimo 6 digitos)
                            <span class="campo-obrigatorio">*</span></label>
                            <input type="password" class="form-control" id="campoSenhaProfessor" 
                                   name="professorSenha">
                            <span id="erroSenhaProfessor" class="alerta-validacao col-md-12 col-lg-12"></span>
                        </div>
                        <div class="form-group">
                            <label for="campoSenhaRepetirProfessor">Confirmar Senha
                            <span class="campo-obrigatorio">*</span></label>
                            <input type="password" class="form-control" id="campoSenhaRepetirProfessor" 
                                   name="professorSenhaRepetir">
                            <span id="erroRepeatProfessor" class="alerta-validacao col-md-12 col-lg-12"></span>
                        </div>
                        
                        <div class="form-group">
                            <span class="campo-obrigatorio">*</span>&nbsp;<label>Campo Obrigatório</label>
                        </div>
                        
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary" id="submitProfessor">Cadastrar</button>
                            <button type="reset" class="btn btn-primary" id="resetProfessor">Limpar Campos</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
