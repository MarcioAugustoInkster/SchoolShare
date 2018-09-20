<%-- 
    Document   : cadastroDaiana
    Created on : 03/09/2018, 08:24:29
    Author     : Daiana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="web.java.mapping.ListagemArquivos"%>

<%@include file="/master/master.jsp" %>

<a href="/usuario/aluno/avaliacaoAluno.jsp"></a>

        <title>SchoolShare | Avaliação</title>
   
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
                <h3 class="box-title">Avaliacao</h3>
                
            </div>
        </div>
    </div>
</div>
        
        
        
        
        <div>
            <table >
                <tr>
                    <td><th>Muito bom</th> <th>Bom</th> <th>Ruim</th> <th>Muito ruim</th></td> 
                </tr>
            </table>
        </div>
       
        
           <tr>
           <label>Como foi a aula?</label>
            <input type="radio" id="checkAtivoAluno" name="AlunoRadioAtivo">&nbsp;&nbsp;Ativo
            </tr>
           
      
   
    
<%@include file="/master/rodape.jsp" %>    
        