<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    //SessaoAdmin.destroiSessao(request, response);
%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Professores <small>Cadastro</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Admin</li>
    </ol>
</section>

<div class="row">
    <div class="col-md-6">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Cadastro de Professor</h3>
            </div>

            <form action="/validacaoProfessor" method="POST" role="form">
                <div class="box-body">
                    <div>
                        <label for="formNome">Nome<span class='text-danger font-weight-bold'>*</span></label>
                        <input type="text" class="form-control" id="formNome" name="nome" required="required">
                    </div>
                    <div>
                        <label for="formSobrenome">Sobrenome<span class='text-danger font-weight-bold'>*</span></label>
                        <input type="text" class="form-control" id="formSobrenome" name="sobrenome" required="required">
                    </div>
                    <div>
                        <label for="formCPF">CPF<span class='text-danger font-weight-bold'>*</span></label>
                        <input type="text" class="form-control" id="formCPF" name="cpf" required="required">
                    </div>
                    <div>
                        <label for="formRG">RG</label>
                        <input type="text" class="form-control" id="formRG" name="rg">
                    </div>
                    <div>
                        <label form="formSexo">Sexo</label>
                        <label for="radioProfessorMasc">
                            <input type="radio" id="radioProfessorMasc" 
                                   name="professorGenero" value="M">&nbsp;&nbsp;Masculino</label>
                        <label for="radioProfessorFem">&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" class="" id="radioProfessorFem" 
                                   name="professorGenero" value="F">&nbsp;&nbsp;Feminino</label>
                    </div>
                    <div>
                        <label for="formNomeDaMae">Nome da Mãe</label>
                        <input type="text" class="form-control" id="formNomeDaMae" name="nomeDaMae">
                    </div>
                    <div>
                        <label for="formNomeDoPai">Nome do Pai</label>
                        <input type="text" class="form-control" id="formNomeDoPai" name="nomeDoPai">
                    </div>
                    <div>
                        <label for="formDataDeNascimento">Data de Nascimento</label>
                        <input type="text" class="form-control" id="formDataDeNascimento" name="dataDeNascimento">
                    </div>
                    <div>
                        <label for="formCidadeDeNacimento">Cidade de Nascimento</label>
                        <input type="text" class="form-control" id="formCidadeDeNacimento" name="cidadeDeNascimento">
                    </div>
                    <div>
                        <label for="formEstadoDeNascimento">Estado de Nascimento</label>
                        <input type="text" class="form-control" id="formEstadoDeNascimento" name="estadoDeNascimento">
                    </div>
                    <div>
                        <label for="formNascionalidade">Nascionalidade</label>
                        <input type="text" class="form-control" id="formNascionalidade" name="Nascionalidade">
                    </div>
                    <h2>Endereço</h2>
                    <div>
                        <label for="formEndereco">Endereço<span class='text-danger font-weight-bold'>*</span></label>
                        <input type="text" class="form-control" id="formEndereco" name="endereco" required="required">
                    </div>
                    <div>
                        <label for="formComplemento">Complemento<span class='text-danger font-weight-bold'>*</span></label>
                        <input type="text" class="form-control" id="formComplemento" name="complemento" required="required">
                    </div>
                    <div>
                        <label for="formBairro">Bairro<span class='text-danger font-weight-bold'>*</span></label>
                        <input type="text" class="form-control" id="formBairro" name="bairro" required="required">
                    </div>
                    <div>
                        <label for="formCep">Cep<span class='text-danger font-weight-bold'>*</span></label>
                        <input type="text" class="form-control" id="formCep" name="cep" required="required">
                    </div>
                    <div>
                        <label for="formCidade">Cidade<span class='text-danger font-weight-bold'>*</span></label>
                        <input type="text" class="form-control" id="formCidade" name="cidade" required="required">
                    </div>
                    <div>
                        <label for="formEstado">Estado<span class='text-danger font-weight-bold'>*</span></label>
                        <select id="formEstado" name="estado" class="form-control">
                            <option selected="selected" disabled="disabled"></option>
                            <option value="AC">Acre</option>
                            <option value="AL">Alagoas</option>
                            <option value="AP">Amapá</option>
                            <option value="AM">Amazonas</option>
                            <option value="BA">Bahia</option>
                            <option value="CE">Ceará</option>
                            <option value="DF">Distrito Federal</option>
                            <option value="ES">Espírito Santo</option>
                            <option value="GO">Goiás</option>
                            <option value="MA">Maranhão</option>
                            <option value="MT">Mato Grosso</option>
                            <option value="MS">Mato Grosso do Sul</option>
                            <option value="MG">Minas Gerais</option>
                            <option value="PA">Pará</option>
                            <option value="PB">Paraíba</option>
                            <option value="PR">Paraná</option>
                            <option value="PE">Pernambuco</option>
                            <option value="PI">Piauí</option>
                            <option value="RJ">Rio de Janeiro</option>
                            <option value="RN">Rio Grande do Norte</option>
                            <option value="RS">Rio Grande do Sul</option>
                            <option value="RO">Rondônia</option>
                            <option value="RR">Roraima</option>
                            <option value="SC">Santa Catarina</option>
                            <option value="SP">São Paulo</option>
                            <option value="SE">Sergipe</option>
                            <option value="TO">Tocantins</option>
                        </select>
                    </div>
                    <h2>Dados de Contatos</h2>
                    <div>
                        <label for="formEmail">E-mail<span class='text-danger font-weight-bold'>*</span></label>
                        <input type="text" class="form-control" id="formEmail" name="email" required="required">
                    </div>
                    <div>
                        <label for="formTelefone">Telefone</label>
                        <input type="text" class="form-control" id="formTelefone" name="telefone">
                    </div>
                    <div>
                        <label for="formCelular">Celular<span class='text-danger font-weight-bold'>*</span></label>
                        <input type="text" class="form-control" id="formCelular" name="celular" required="required">
                    </div>
                    <h2>Escolaridade</h2>
                    <div>
                        <label for="formNivelDeEnsino">Nivel de Ensino<span class='text-danger font-weight-bold'>*</span></label>
                        <select id="formNivelDeEnsino" name="nivelDeEnsino" class="form-control">
                            <option selected="selected" disabled="disabled"></option>
                            <option value="Bachalerado">Bacharelado</option>
                            <option value="Licenciatura">Licenciatura</option>
                            <option value="Tecnologo">Tecnologo</option>
                        </select>
                    </div>
                    <div>
                        <label for="formArea">Area de Formação<span class='text-danger font-weight-bold'>*</span></label>
                        <input type="text" class="form-control" id="formArea" name="area" required="required">
                    </div>		
                    <div>
                        <label form="radioEstuda">Estuda Atualmente</label>
                        <label for="radioProfessorSim">
                            <input type="radio" id="radioEstudaSim" 
                                   name="professorEstuda" value="S">&nbsp;&nbsp;Sim</label>
                        <label for="radioProfessorNao">&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" class="" id="radioProfessorNao" 
                                   name="professorEstuda" value="N">&nbsp;&nbsp;Não</label>
                    </div>
                    <h2>Acesso</h2>
                    
                    <div class="form-group">
                        <label for="formLogin">Login</label>
                        <input type="text" class="form-control" id="formLogin" 
                               name="professorLogin" required="required">
                    </div>
                    
                    <div class="form-group">
                        <label for="checkNivelProfessor">Nivel de Acesso</label>
                        <select id="checkNivelProfessor" name="professorNivelAtivo" class="form-control">
                            <option value="1">1 - Admin</option>
                            <option value="2">2 - Professor</option>
                            <option value="3">3 - Aluno</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="campoSenhaProfessor">Senha</label>
                        <input type="text" class="form-control" id="campoSenhaProfessor" 
                               name="professorSenha" required="required">
                    </div>


                    <div class="form-group">
                        <label for="campoSenhaRepetirProfessor">Confirmar Senha</label>
                        <input type="text" class="form-control" id="campoSenhaRepetirProfessor" 
                               name="professorSenhaRepetir" required="required">
                    </div>


                    <div class="form-group">
                        <label for="checkAtivoProfessor">
                            <input type="checkbox" id="checkAtivoProfessor" name="professorCheckAtivo" >&nbsp;&nbsp;Ativo</label>
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

<%@include file="/master/rodape.jsp" %>