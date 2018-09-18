<%-- 
    
    Created on : 03/09/2018, 08:24:29
    Author     : Daiana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="web.bean.AlunoBean"%>
<%@page import="web.paginas.PerfilUpdate"%>
<%@page import="web.java.mapping.ListagemArquivos"%>
<%@page import="web.java.mapping.ListagemArquivos"%> 

<%@include file="/master/master.jsp" %>



 <%AlunoBean aluno =new AlunoBean(); %>
 
        <title>SchoolShare | Perfil</title>
   
  
<a href="/aluno/perfilAluno.jsp"></a>        
   
  <section class="content-header">
         <h1>Perfil</h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Aluno</li>
    </ol>
</section>

    <div class="row">
    <div class="col-md-6">
        <div class="box box-primary">
            <div class="box-header with-border">
                
                <form action="/validacaoAluno" method="POST" role="form">
                <div class="box-body">
                    <div>
    <table>
       <thead>
           <tr>
                <th> ID: </th>
                <th><%out.print(aluno.getId());%> <th>
                    <br>
           </tr>
      
           <tr>
                <th> Nome: </th> 
                <th><%out.print(aluno.getNome());%></th>
          </tr>
           <tr>
                <th> Sobrenome: </th>
                <th><%out.print(aluno.getSobrenome());%></th>
           </tr>
           <tr>
                <th> CPF:  </th>
                <th><%out.print(aluno.getCpf());%></th>
           </tr>
           <tr>
                <th> RG: </th>
                <th><%out.print(aluno.getRg());%></th> 
           </tr>
           <tr>
                <th> Sexo: </th>
                <th><%out.print(aluno.getSexo());%></th>
           </tr>
           <tr>
                <th> Nome da mãe: </th>
                <th><%out.print(aluno.getNomeDaMae());%></th>
           </tr>
           <tr>
                <th> Nome do pai: </th>
                <th><%out.print(aluno.getNomeDoPai());%></th>
           </tr>
           <tr>
                <th> Data de nascimento: </th>
                <th><%out.print(aluno.getDataDeNascimento());%></th>
           </tr>
           
           <tr>
                <th> Cidade de nascimento: </th>
                <th> <%out.print(aluno.getCidadeNascimento());%> </th>
           </tr>
           <tr>
                <th> Estado de nascimento: </th>
                <th> <%out.print(aluno.getEstadoNascimento());%> </th>
           </tr>
           <tr>
                <th> Nacionalidade: </th>
                <th> <%out.print(aluno.getNacionalidade());%> </th>
           </tr>
        </thead>
    </table>
          
           <h2>Endereço</h2>  
    <table>
       <thead>
           <tr>
                <th> Cep: </th>
                <th><input type="text" id="campo-cep" name="cep"
                   value="<%out.print(aluno.getCep());%>" ></th>
           </tr>
           <tr>
                <th> Rua: </th>
                <th><input type="text" id="campo-rua" name="rua"
                        value=" <%out.print(aluno.getRua());%>"></th>
           </tr>
           <tr>
                <th> Complemento: </th>
                <th> <input type="text" id="campo-complemento" name="complemento"
                        value="<%out.print(aluno.getComplemento());%>"></th>
           </tr>
           <tr>
                <th> Bairro: </th>
                <th> <input type="text" id="campo-bairro" name="bairro"
                            value="<%out.print(aluno.getBairro());%>"></th>
           </tr>
           <tr>
                <th> Cidade: </th>
                <th> <input type="text" id="campo-cidade" name="cidade"
                        value="<%out.print(aluno.getCidade());%>"></th>
                
           </tr>
           <tr>
                <th> Estado: </th>
                <th> 
                <select id="formEstado" name="formEstado" class="form-control"
                        value="<%out.print(aluno.getEstado());%>">
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
                </select></th>
 
           </tr>
       </thead>
     </table>
           <button>Alterar</button>
           
           <h2>Dados de Contato</h2>
           <table>
               <thead>
                   <tr>
                       <th>E-mail: </th>
                       <th><%out.print(aluno.getEmail());%> </th>
                   </tr>
                   <tr>
                       <th>Telefone: </th>
                       <th><input type="text" id="campo-telefone" name="telefone" 
                               value="<%out.print(aluno.getTelefone());%>"></th>
                   </tr>
                   <tr>
                       <th>Celular: </th>
                       <th><input type="text" id="campo-celular" name="celular" 
                               value="<%out.print(aluno.getCelular());%>"></th>
                   </tr>
               </thead>
             </table>
              <button>Alterar</button>
              
              <h2>Escolaridade</h2>
                   <table>
                       <thead>
                           <tr>
                               <th>Grau:</th>
                               <th><%out.print(aluno.getGrauEscolaridade());%></th>
                             </tr>
                          <tr>
                               <th>Estudando:</th>
                               <th><%out.print(aluno.getEstudando());%></th>
                             </tr>
                             <tr>
                               <th>Escola:</th>
                               <th><%out.print(aluno.getEscola());%></th>
                             </tr>
                       </thead>
                   </table>
            </div>
        </div>
    </div>
        </div>
 </form>
       
          <%@include file="/master/rodape.jsp" %>     