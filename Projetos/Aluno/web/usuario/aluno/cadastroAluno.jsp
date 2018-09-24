<%-- 
    Document   : cadastroDaiana
    Created on : 03/09/2018, 08:24:29
    Author     : Daiana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="web.bean.AlunoBean"%>
<%@page import="web.paginas.PerfilUpdate"%>
<%@page import="web.java.mapping.ListagemArquivos"%>
<%@page import="web.java.mapping.ListagemArquivos"%> 
<%@page import="web.paginas.AlunoStore"%>

<%@include file="/master/master.jsp" %>

<a href="/usuario/aluno/cadastroAluno.jsp"></a>


<title>SchoolShare | Cadastro</title>

  <section class="content-header">
    <h1>Aluno <small>Cadastro</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Admin</li>
    </ol>
</section>


<div class="row">
    <div class="col-md-6">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Cadastro de Alunos</h3>
            </div>

 <div class="box-body">
                    <div class="form-group">
        <label for="formNome">Nome<span class='text-danger font-weight-bold'>*</span>
        </label>
        <input type="text" class="form-control" id="formNome"
               name="formNome" >
                    </div></div>
 
<div class="box-body">
                    <div class="form-group">
        <label for="formSobrenome">Sobrenome<span class='text-danger font-weight-bold'>*</span>
        </label>
        <input type="text" class="form-control" id="formSobrenome"
               name="formSobrenome">
                    </div></div>
 
 <div class="box-body">
                    <div class="form-group">
        <label for="formCPF">CPF<span class='text-danger font-weight-bold'>*</span>
        </label>
        <input type="text" class="form-control" id="formCPF"
               name="formCPF">
                    </div></div>
    
  <div class="box-body">
                    <div class="form-group">
        <label for="formRG">RG</label>
        <input type="text" class="form-control" id="formRG"
               name="formRG">
                    </div></div>
 
 <div>
     <label for="formSexo">Sexo<span class='text-danger font-weight-bold'>*</span></label>
     <select id="formSexo" name="formSexo" class="form-control">
      <option value="Feminino">Feminino</option>
       <option value="Masculino">Masculino</option>
                        </select>
                    </div>
    
  <div class="box-body">
                    <div class="form-group">
        <label for="formNomeDaMae">Nome da Mãe</label>
        <input type="text" class="form-control" id="formNomeDaMae"
               name="formNomeDaMae">
                    </div></div>
 <div class="box-body">
                    <div class="form-group">
        <label for="formNomeDoPai">Nome do Pai</label>
        <input type="text" class="form-control" id="formNomeDoPai"
               name="formNomeDoPai">
                    </div></div>
  <div class="box-body">
                    <div class="form-group">
        <label for="formDataDeNascimento">Data de Nascimento</label>
        <input type="text" class="form-control" id="formDataDeNascimento"
               name="formDataDeNascimento" placeholder="01/02/1991">
                    </div></div>
  <div class="box-body">
                    <div class="form-group">
        <label for="formCidadeDeNascimento">Cidade de nascimento</label>
        <input type="text" class="form-control" id="formCidadeDeNascimento"
               name="formCidadeDeNascimento">
                    </div></div>
  <div class="box-body">
                    <div class="form-group">
        <label for="formEstadoDeNascimento">Estado de nascimento</label>
        <input type="text" class="form-control" id="formEstadoDeNascimento"
               name="formEstadoDeNascimento">
                    </div></div>
  <div class="box-body">
                    <div class="form-group">
        <label for="formNacionalidade">Nacionalidade</label>
        <input type="text" class="form-control" id="formNacionalidade"
               name="formNacionalidade">
                    </div></div>
 
 <h2>Endereço</h2>
 
  <div class="box-body">
                    <div class="form-group">
        <label for="formCep">Cep<span class='text-danger font-weight-bold'>*</span>
        </label>
        <input type="text" class="form-control" id="formCep"
               name="formCep">
                    </div></div>
 
  <div class="box-body">
                    <div class="form-group">
        <label for="formEndereco">Endereço<span class='text-danger font-weight-bold'>*</span>
        </label>
        <input type="text" class="form-control" name="formEndereco" 
               id="formEndereco" 
               placeholder="Ex: Rua Roberto de Machado">
                    </div></div>
 
  <div class="box-body">
                    <div class="form-group">
        <label for="formComplemento">Complemento<span class='text-danger font-weight-bold'>*</span>
        </label>
        <input type="text" class="form-control" id="formComplemento" 
               name="formComplemento">
                    </div></div>
 
 <div class="box-body">
                    <div class="form-group">
        <label for="formBairro">Bairro<span class='text-danger font-weight-bold'>*</span>
        </label>
        <input type="text" class="form-control" id="formBairro" 
               name="formBairro">
                    </div></div>
 
 <div class="box-body">
                    <div class="form-group">
     <label for="formCidade">Cidade<span class='text-danger font-weight-bold'>*</span>
     </label>
     <input type="text" class="form-control" id="formCidade"
            name="formCidade">
                    </div></div>
 
 <div class="box-body">
                    <div class="form-group">
     <label for="formEstado">Estado</label>
      <select id="formEstado" name="formEstado" class="form-control">
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
                    </div></div>
 
 <h2>Dados de Contato</h2>
 
 <div class="box-body">
                    <div class="form-group">
     <label for="formEmail">E-mail<span class='text-danger font-weight-bold'>*</span>
     </label>
     <input type="text" class="form-control" id="formEmail"
            name="formEmail">
                    </div></div>
 
 <div class="box-body">
                    <div class="form-group">
     <label for="formTelefone">Telefone<span class='text-danger font-weight-bold'>*</span>
     </label>
     <input type="text" class="form-control" id="formTelefone"
            name="formTelefone">
                    </div></div>
 
 <div class="box-body">
                    <div class="form-group">
     <label for="formCelular">Celular<span class='text-danger font-weight-bold'>*</span>
     </label>
     <input type="text" class="form-control" id="formCelular"
            name="formCelular">
                    </div></div>
 
 <h2>Escolaridade</h2>
 
 <div class="box-body">
                    <div class="form-group">
     <label for="formGrau">Grau</label>
     <select id="formGrau" name="formGrau" class="form-control">
      <option value="Educação Fundamental Completo">Educação Fundamental Completo</option>
      <option value="Educação Fundamental Incompleto">Educação Fundamental Incompleto</option>
      <option value="Ensino Médio Completo">Ensino Médio Completo</option>
      <option value="Ensino Médio Incompleto">Ensino Médio Incompleto</option>
      <option value="Ensino Superior Completo">Ensino Superior Completo</option>
      <option value="Ensino Superio Incomleto">Ensino Superior Incompleto</option>
        </select>
                    </div></div>
 
  <div>
     <label for="checkEstudando">Estuda Atualmente<span class='text-danger font-weight-bold'>*</span>
         <input type="radio" id="formEstudando" name="estudando">
 </div>
 <br>
 
 <div class="form-group">
       <label for="checkAtivoAluno">
       <input type="radio" id="checkAtivoAluno" name="AlunoRadioAtivo">&nbsp;&nbsp;Ativo</label>
                    </div>
                    
<div class="box-footer">
                    <button type="submit" class="btn btn-primary">Cadastrar</button>
                    <button type="reset" class="btn btn-primary">Limpar Campos</button>
                </div>
                    </div>
                </div>
                </form>
 
 <%@include file="/master/rodape.jsp" %>  
    
   