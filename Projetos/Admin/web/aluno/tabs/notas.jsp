<%-- 
    Document   : notas
    Created on : 27/09/2018, 04:28:09
    Author     : Freakazed-PC
--%>

<%@page import="web.java.dao.NotaDAO"%>
<%@page import="web.java.classe.NotaBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- tabela notas -->
<%  List<NotaBean> Notas = new NotaDAO().obterNota();%>
<div class="col-md-12">
    <table id="lista-nota" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th class="col-sm-1" style="text-align: center">Turma</th>
                <th style="text-align: center">Nome</th>
                <th style="text-align: center">1° bim</th>
                <th style="text-align: center">2° bim</th>
                <th style="text-align: center">3° bim</th>
                <th style="text-align: center">4° bim</th>
                <th style="text-align: center">Frequencia</th>

            </tr>
        </thead>
        <tbody>
            <% for (NotaBean notaAlunos : Notas) {%>
            <tr>
                <th><%=notaAlunos.getNome()%></th>
                <th><%=notaAlunos.getNota1()%></th>
                <th><%=notaAlunos.getNota2()%></th>
                <th><%=notaAlunos.getNota3()%></th>
                <th><%=notaAlunos.getNota4()%></th>
                <th><%=notaAlunos.getFrequencia()%></th>
                <th>
                    <button type="submit" style="margin-left: 27%" id="botao_excluir" class="btn btn-success blue">
                        <i class="fas fa-trash"></i>
                    </button>
                    <button type="reset" id="botao_editar" class="btn btn-success red">
                        <i class="far fa-edit"></i>
                    </button>
                </th>
            </tr>
            <% }%>
        </tbody>
    </table>
</div>