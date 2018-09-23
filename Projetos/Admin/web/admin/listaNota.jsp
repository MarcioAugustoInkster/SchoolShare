<%@page import="java.util.List"%>
<%@page import="web.java.classe.NotaBean"%>
<%@page import="web.java.dao.NotaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/master/master.jsp" %>
<%@include file="/master/scripts.jsp" %>
<%@include file="/master/css.jsp" %>

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
                        <th style="text-align: center">Nome</th>
                        <th style="text-align: center">1° bim</th>
                        <th style="text-align: center">2° bim</th>
                        <th style="text-align: center">3° bim</th>
                        <th style="text-align: center">4° bim</th>
                        <th style="text-align: center">Frequencia</th>
                        <th style="text-align: center">Editar/Excluir</th>
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
                    </tr>
                    <% }%>
                </tbody>
                <tfoot>
                    <tr>
                        <th style="text-align: center">Nome</th>
                        <th style="text-align: center">1° bim</th>
                        <th style="text-align: center">2° bim</th>
                        <th style="text-align: center">3° bim</th>
                        <th style="text-align: center">4° bim</th>
                        <th style="text-align: center">Frequencia</th>
                        <th style="text-align: center">Editar/Excluir</th>>
                    </tr>
                </tfoot>
            </table>
            </div>
                
                
<%@include file="/master/rodape.jsp" %>