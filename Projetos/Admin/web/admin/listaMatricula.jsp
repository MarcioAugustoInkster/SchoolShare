<%-- 
    Document   : listaMatricula
    Created on : 26/09/2018, 12:49:34
    Author     : Freakazed-PC
--%>

<%@page import="web.java.dao.MatriculaDAO"%>
<%@page import="web.java.classe.MatriculaBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Lista de Cursos <small>Tabela</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/matriculaIndex.jsp"><i class="fa fa-archive"></i> Matricula</a></li>
        <li class="active">Listagem</li>
    </ol>
</section>

<section class="content">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Lista de Alunos matriculados</h3>
        </div>
        <div class="box-body">
            <table id="tabelaMatricula" class="table table-bordered table-hover">
                <tr>
                    <th>#</th>
                    <th>Pessoa</th>
                    <th>Turma</th>
                    <th>Matriculado em</th>
                    <th>Opções</th>
                </tr>
                <%
                    int counter = 1;
                    List<MatriculaBean> matricula = new MatriculaDAO().listaMatricula();
                    
                    for (MatriculaBean matriculado : matricula) {
                %>
                <tr>
                    <td><%=counter++%></td>
                    <td><%=matriculado.getPessoa().getNome() %>&nbsp;<%=matriculado.getPessoa().getSobrenome()%></td>
                    <td><%=matriculado.getTurma().getTurma() %></td>
                    <td><%=matriculado.getDataMatricula() %></td>
                    <td><a class="btn-custom btn-app-custom">
                        <i class="fa fa-edit"></i> Editar</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>

