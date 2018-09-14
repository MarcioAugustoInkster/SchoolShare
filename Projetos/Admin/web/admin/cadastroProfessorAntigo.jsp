<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Professores <small>Cadastro</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Admin</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Cadastro de Professor</h3>
                </div>

                <form action="/registroProfessor" method="POST" role="form">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="campoProfessorNome">Nome do Professor</label>
                            <input type="text" class="form-control" id="campoProfessorNome" 
                                   name="professorNome">
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="campoProfessorSobrenome">Sobrenome</label>
                            <input type="text" class="form-control" id="campoProfessorSobrenome" 
                                   name="professorSobrenome">
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="radioProfessorMasc">
                                <input type="radio" class="" id="radioProfessorMasc" 
                                       name="professorGenero" value="M" checked>&nbsp;&nbsp;Masculino</label>
                            <label for="radioProfessorFem">&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" class="" id="radioProfessorFem" 
                                       name="professorGenero" value="F">&nbsp;&nbsp;Feminino</label>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="campoAnoProfessor">Data de Nascimento</label>
                            <input type="text" class="form-control" id="campoAnoProfessor" 
                                   name="professorAnoNascimento">
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="campoEmailProfessor">E-mail</label>
                            <input type="text" class="form-control" id="campoEmailProfessor" 
                                   name="professorEmail">
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="campoTelefoneProfessor">Telefone</label>
                            <input type="text" class="form-control" id="campoTelefoneProfessor" 
                                   name="professorTelefone">
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="campoLoginProfessor">Login de Acesso</label>
                            <input type="text" class="form-control" id="campoLoginProfessor" 
                                   name="professorLogin">
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="campoSenhaProfessor">Senha</label>
                            <input type="text" class="form-control" id="campoSenhaProfessor" 
                                   name="professorSenha">
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="campoSenhaRepetirProfessor">Confirmar Senha</label>
                            <input type="text" class="form-control" id="campoSenhaRepetirProfessor" 
                                   name="professorSenhaRepetir">
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="checkAtivoProfessor"><input type="checkbox"
                                                                    id="checkAtivoProfessor" name="professorCheckAtivo" >&nbsp;&nbsp;Ativo</label>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="checkNivelProfessor">Nivel de Acesso</label>
                            <select id="checkNivelProfessor" name="professorNivelAtivo" class="form-control">
                                <option value="1">1 - Admin</option>
                                <option value="2">2 - Professor</option>
                                <option value="3">3 - Aluno</option>
                            </select>
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
