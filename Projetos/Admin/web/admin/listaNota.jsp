<%@page import="java.util.List"%>
<%@page import="web.java.classe.NotaBean"%>
<%@page import="web.java.dao.NotaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Nota Dos Alunos<small>Tabela</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/notaIndex.jsp"><i class="fa fa-home"></i> Nota</a></li>
        <li class="active">Ver Lista</li>
    </ol>
</section>

<!-- tabela notas -->
<%  List<NotaBean> Notas = new NotaDAO().obterNota();%>
<div class="col-md-12">
    <table id="lista-nota" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th style="text-align: center">Turma</th>
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
                
            </tr>
            <% }%>
        </tbody>
        <tfoot>
            <tr>
                <th style="text-align: center">Turma</th>
                <th style="text-align: center">Nome</th>
                <th style="text-align: center">1° bim</th>
                <th style="text-align: center">2° bim</th>
                <th style="text-align: center">3° bim</th>
                <th style="text-align: center">4° bim</th>
                <th style="text-align: center">Frequencia</th>
            </tr>
        </tfoot>
    </table>
</div>


<%@include file="/master/rodape.jsp" %>