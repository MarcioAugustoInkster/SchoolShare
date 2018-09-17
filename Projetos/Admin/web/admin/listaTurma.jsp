<%@page import="web.java.classe.CursoBean"%>
<%@page import="web.java.classe.ProfessorBean"%>
<%@page import="web.java.dao.TurmaDAO"%>
<%@page import="web.java.classe.TurmaBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Lista de Turnas <small>Tabela</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/turmaIndex.jsp"><i class="fa fa-user-circle"></i> Turmas</a></li>
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
                List<TurmaBean> turma = new TurmaDAO().listaTurma();
                List<ProfessorBean> professor = new TurmaDAO().listaProfessor();
                List<CursoBean> curso = new TurmaDAO().listaCurso();

                Iterator<TurmaBean> itTurma = turma.iterator();
                Iterator<ProfessorBean> itProfessor = professor.iterator();
                Iterator<CursoBean> itCurso = curso.iterator();
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

                    while (itTurma.hasNext() && itProfessor.hasNext() && itCurso.hasNext()) {
                %>
                <tr>
                    <td><%=counter++%></td>
                    <td><%=itTurma.next().getNome() %></td>
                    <td><%=itProfessor.next().getNome()%>&nbsp;
                        <%=itProfessor.next().getSobrenome()%></td>
                    <td><%=itCurso.next().getNome() %></td>
                    <td><%=itTurma.next().getDataInicio() %></td>
                    <td><%=itTurma.next().getDataFinal() %></td>
                    <td><%=itTurma.next().getCargaHoraria() %></td>
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
