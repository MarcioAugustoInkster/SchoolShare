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
        
        
        
        
        <table width="600">
        <tbody>
            <tr>
                <td width="300"></td>
                <td> Muito bom </td>
                <td>  Bom </td>
                <td> Ruim </td>
                <td>Muito ruim </td>
            </tr>
            
            <tr>
                <td>
                    <div>Como foi a aula de hoje?</div>
                </td>
                <td><input type="radio" class="" id="radioAulaHoje" name="aulaHoje" value=""></td>
                <td><input type="radio" class="" id="radioAulaHoje" name="aulaHoje" value=""></td> 
                <td><input type="radio" class="" id="radioAulaHoje" name="aulaHoje" value=""></td> 
                <td><input type="radio" class="" id="radioAulaHoje" name="aulaHoje" value=""></td>
            </tr>
            
            <tr>
                <td>
                    <div>Metodologia aplicada pelo instrutor?</div>
                </td>
                <td><input type="radio" class="" id="radioMetodologia" name="metodologia" value=""></td>
                <td><input type="radio" class="" id="radioMetodologia" name="metodologia" value=""></td>
                <td><input type="radio" class="" id="radioMetodologia" name="metodologia" value=""></td>
                <td><input type="radio" class="" id="radioMetodologia" name="metodologia" value=""></td>
            </tr>
            
            <tr>
                <td>
                    <div>Postura didática do instrutor?</div>
                </td>
                <td><input type="radio" class="" id="radioPostura" name="radioPostura" value=""></td> 
                <td><input type="radio" class="" id="radioPostura" name="radioPostura" value=""></td>
                <td><input type="radio" class="" id="radioPostura" name="radioPostura" value=""></td> 
                <td><input type="radio" class="" id="radioPostura" name="radioPostura" value=""></td>
            </tr>
            
            <tr>
                <td>
                    <div>Computadores e equipamentos?</div>
                </td>
                <td><input type="radio" class="" id="radioPcEquipamento" name="radioPcEquipamento" value=""></td> 
                <td><input type="radio" class="" id="radioPcEquipamento" name="radioPcEquipamento" value=""></td>
                <td><input type="radio" class="" id="radioPcEquipamento" name="radioPcEquipamento" value=""></td>
                <td><input type="radio" class="" id="radioPcEquipamento" name="radioPcEquipamento" value=""></td>
            </tr>
                
            <tr>
               <td>
                    <div>Condições físicas do ambiente?</div>
                </td>
                <td><input type="radio" class="" id="radioCondicoes" name="radioCondicoes" value=""></td>
                <td><input type="radio" class="" id="radioCondicoes" name="radioCondicoes" value=""></td>
                <td><input type="radio" class="" id="radioCondicoes" name="radioCondicoes" value=""></td>
                <td><input type="radio" class="" id="radioCondicoes" name="radioCondicoes" value=""></td>
            </tr>
            
            <tr>
                <td>
                    <div>Observações</div>
                </td>
                <td><input type="" name=""></td>
                
            </tr>
        </tbody>    
    </table>
          <button>
                <label>Salvar</label>
            </button>
          </tr>


</body>
    
<%@include file="/master/rodape.jsp" %>    
        