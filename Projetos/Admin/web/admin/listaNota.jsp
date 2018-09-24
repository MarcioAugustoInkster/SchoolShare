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

<div class="col-md-10">
    <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
=======
<div class="col-md-12">
    <table id="lista-nota" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th class="col-sm-1"style="text-align: center">Turma</th>
>>>>>>> a71b27a58b77c5228a6457e8da4c3ad6a965180d
                <th style="text-align: center">Nome</th>
                <th style="text-align: center">1° bim</th>
                <th style="text-align: center">2° bim</th>
                <th style="text-align: center">3° bim</th>
                <th style="text-align: center">4° bim</th>
                <th style="text-align: center">Frequencia</th>

                <th style="text-align: center">Editar/Excluir</th>
=======
>>>>>>> a71b27a58b77c5228a6457e8da4c3ad6a965180d
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
                    <a button type="submit" style="margin-left: 27%" id="botao_excluir" href='/adicionar?id=<%=notaAlunos.getId()%>' class='btn btn-success blue'><i class="fas fa-trash"></i></a>
                    <a button type="reset" id="botao_editar" href='/adicionar?id=<%=notaAlunos.getId()%>' class='btn btn-success red'><i class="far fa-edit"></i></a>
                </th>
=======
                
>>>>>>> a71b27a58b77c5228a6457e8da4c3ad6a965180d
            </tr>
            <% }%>
        </tbody>
        <tfoot>
            <tr>

=======
                <th style="text-align: center">Turma</th>
>>>>>>> a71b27a58b77c5228a6457e8da4c3ad6a965180d
                <th style="text-align: center">Nome</th>
                <th style="text-align: center">1° bim</th>
                <th style="text-align: center">2° bim</th>
                <th style="text-align: center">3° bim</th>
                <th style="text-align: center">4° bim</th>
                <th style="text-align: center">Frequencia</th>

                <th style="text-align: center">Editar/Excluir</th>>
=======
>>>>>>> a71b27a58b77c5228a6457e8da4c3ad6a965180d
            </tr>
        </tfoot>
    </table>
</div>


=======

>>>>>>> a71b27a58b77c5228a6457e8da4c3ad6a965180d
<%@include file="/master/rodape.jsp" %>