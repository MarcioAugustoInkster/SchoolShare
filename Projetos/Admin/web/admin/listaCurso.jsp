<%@page import="web.java.dao.CursoDAO"%>
<%@page import="web.java.classe.CursoBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Lista de Cursos <small>Tabela</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/cursoIndex.jsp"><i class="fa fa-book"></i> Curso</a></li>
        <li class="active">Lista Cursos</li>
    </ol>
</section>

<section class="content">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Lista de Instituições Registradas</h3>
        </div>
        <div class="box-body">
            <%
                List<CursoBean> curso = new CursoDAO().listaCurso();
            %>
            <table id="tabelaCurso" class="table table-bordered table-hover">
                <tr>
                    <th>#</th>
                    <th>Instituição</th>
                    <th>Curso</th>
                    <th>Opções</th>
                </tr>
                <%
                    int counter = 1;
                    
                   for (CursoBean cursos : curso) {
                %>
                <tr>
                    <td><%=counter++%></td>
                    <td><%=cursos.getInstituicao()%></td>
                    <td><%=cursos.getCurso() %></td>
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
