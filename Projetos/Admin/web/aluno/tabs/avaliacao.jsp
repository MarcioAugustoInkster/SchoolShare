<%-- 
    Document   : avaliacao
    Created on : 26/09/2018, 22:45:21
    Author     : Freakazed-PC
--%>

<%@page import="web.java.mapping.DataFormatter"%>
<%@page import="java.util.List"%>
<%@page import="web.java.dao.PessoaDAO"%>
<%@page import="web.java.classe.PessoaBean"%>
<%@page import="web.java.admin.SessaoAdmin"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Tab Avaliação -->

<div class="form-group">
    <div class="form-group">
        <h2>Avalie nosso sistema diariamente e nos ajude a melhorá-lo</h2>
    </div>
    
    <table class="table table-striped tabela-avaliacao">
        <thead>
            <tr>
                <th class="col-md-4"></th>
                <th class="col-md-2">Fraco</th>
                <th class="col-md-2">Modesto</th>
                <th class="col-md-2">Bom</th>
                <th class="col-md-2">Muito Bom</th>
                <th class="col-md-2">Sem Ocorrências</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    <div>Como anda o desempenho do Sistema hoje?</div>
                </td>
                <td><input type="radio" class="radio-inline" id="radioFraco" name="qDesempenho" value="1"></td>
                <td><input type="radio" class="radio-inline" id="radioModesto" name="qDesempenho" value="2"></td> 
                <td><input type="radio" class="radio-inline" id="radioBom" name="qDesempenho" value="3"></td> 
                <td><input type="radio" class="radio-inline" id="radioMuitoBom" name="qDesempenho" value="4"></td>
                <td><input type="radio" class="radio-inline" id="radioSemOcorrencia" name="qDesempenho" value="5"></td>
            </tr>

            <tr>
                <td>
                    <div>Sugestões, Críticas ou Elogios</div>
                </td>
                <td colspan="4">
                    <textarea class="textAvaliacao form-control"></textarea>
                </td>
            </tr>
        </tbody>
    </table>
    <div class="box-footer">
        <button type="submit" class="btn btn-primary">Salvar</button>
    </div>
</div>

<div class="form-group">

</div>