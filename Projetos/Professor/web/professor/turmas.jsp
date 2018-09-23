
<%@page import="web.java.dao.TurmaDAO"%>
<%@page import="web.java.bean.TurmaBean"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Lista de Turnas <small>Tabela</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Ver Lista</li>
    </ol>
</section>

<section class="content">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Lista de Turmas Registradas</h3>
        </div>
        <div class="box-body">
            <%
                List<TurmaBean> turmas = new TurmaDAO().listaTurma();

            %>
            <table id="tabelaTurma" class="table table-bordered table-hover">
                <tr>
                    <th>#</th>
                    <th>Turma</th>
                    <th>Professor</th>
                    <th>Curso</th>
                    <th>Data Inicio</th>
                    <th>Data Final</th>
                    <th>Carga Horária</th>
                    <th>Opções</th>
                </tr>
                <%                    
                    int counter = 1;
                    for (TurmaBean turma : turmas) {
                %>
                <tr>
                    <td><%=counter++%></td>
                    <td><%=turma.getTurma()%></td>
                    <td><%=turma.getProfessor().getNome()%>&nbsp;
                        <%=turma.getProfessor().getSobrenome()%></td>
                    <td><%=turma.getCurso().getCurso()%></td>
                    <td><%=turma.getDataInicio()%></td>
                    <td><%=turma.getDataFinal()%></td>
                    <td><%=turma.getCargaHoraria()%></td>
                    <td>
                        <a class="btn-custom btn-app-custom">
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
