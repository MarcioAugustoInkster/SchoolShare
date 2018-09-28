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
                            <label for="campoProfessorNome">Nome do Professor</label>
                            <input type="text" class="form-control" id="campoProfessorNome" 
                                   name="professorNome">
                        </div>
                        <div class="form-group">
                            <label for="campoProfessorSobrenome">Sobrenome</label>
                            <input type="text" class="form-control" id="campoProfessorSobrenome" 
                                   name="professorSobrenome">
                        </div>
                        <div class="form-group">
                            <label for="radioProfessorMasc">
                                <input type="radio" class="" id="radioProfessorMasc" 
                                       name="professorGenero" value="M" checked>&nbsp;&nbsp;Masculino</label>
                            <label for="radioProfessorFem">&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" class="" id="radioProfessorFem" 
                                       name="professorGenero" value="F">&nbsp;&nbsp;Feminino</label>
                        </div>

                        <div class="form-group">
                            <label for="campoAnoProfessor">Data de Nascimento</label>
                            <input type="text" class="form-control" id="campoAnoProfessor" 
                                   name="professorAnoNascimento">
                        </div>
                        <div class="form-group">
                            <label for="campoEmailProfessor">E-mail</label>
                            <input type="text" class="form-control" id="campoEmailProfessor" 
                                   name="professorEmail">
                        </div>
                        <div class="form-group">
                            <label for="campoTelefoneProfessor">Telefone</label>
                            <input type="text" class="form-control" id="campoTelefoneProfessor" 
                                   name="professorTelefone">
                        </div>
                        <div class="form-group">
                            <label for="campoLoginProfessor">Login de Acesso</label>
                            <input type="text" class="form-control" id="campoLoginProfessor" 
                                   name="professorLogin">
                        </div>
                        <div class="form-group">
                            <label for="campoSenhaProfessor">Senha</label>
                            <input type="password" class="form-control" id="campoSenhaProfessor" 
                                   name="professorSenha">
                        </div>
                        <div class="form-group">
                            <label for="campoSenhaRepetirProfessor">Confirmar Senha</label>
                            <input type="password" class="form-control" id="campoSenhaRepetirProfessor" 
                                   name="professorSenhaRepetir">
                        </div>
                        <div class="form-group">
                            <label for="checkAtivoProfessor"><input type="checkbox"
                                                                    id="checkAtivoProfessor" name="professorCheckAtivo" >&nbsp;&nbsp;Ativo</label>
                        </div>

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Cadastrar</button>
                            <button type="reset" class="btn btn-primary">Limpar Campos</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
