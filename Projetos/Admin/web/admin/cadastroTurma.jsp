<%@page import="web.java.mapping.Listas"%>
<%@page import="java.util.List"%>
<%@page import="web.java.classe.PessoaBean"%>
<%@page import="web.java.dao.ProfessorDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Turmas <small>Cadastro</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/turmaIndex.jsp"><i class="fa fa-user-circle"></i> Turmas</a></li>
        <li class="active">Registrar</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Cadastro de Turma</h3>
                </div>

                <form action="/registroTurma" method="POST" role="form">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="campoTurmaProfessor">Adicione um Professor</label>
                            <select class="form-control" id="campoTurmaProfessor" name="turmaProfessor">
                                <%
                                    List<PessoaBean> pessoa = new ProfessorDAO().nomeProfessor();

                                    for (PessoaBean lista : pessoa) {
                                %>
                                <option value="<%=lista.getId()%>">
                                    <%=lista.getNome()%>&nbsp;<%=lista.getSobrenome()%>
                                </option>
                                <%
                                    }
                                %>
                            </select>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="campoTurmaCurso">Adicione uma Turma</label>
                            <select class="form-control" id="campoTurmaCurso" name="turmaCurso">
                                <%
                                    int count = 1;
                                    String[] cursos = Listas.listaCursosEntra21();

                                    for (String lista : cursos) {
                                %>
                                <option value="<%=count%>"><%=lista%></option>
                                <%}
                                %>

                            </select>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="campoTurmaNome">Nome da Turma</label>
                            <input type="text" class="form-control" id="campoTurmaNome" 
                                   name="turmaNome">
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="campoTurmaDataInicio">Data Inicial</label>
                            <input type="text" class="form-control" id="campoTurmaDataInicio" 
                                   name="turmaDataInicio">
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="campoTurmaDataFinal">Data Final</label>
                            <input type="text" class="form-control" id="campoTurmaDataFinal" 
                                   name="turmaDataFinal">
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="campoTurmaCargaHora">Carga Horária</label>
                            <small>&nbsp;&nbsp;&nbsp;Exemplo: 30 (horas)</small>
                            <input type="text" class="form-control" id="campoTurmaCargaHora" 
                                   name="turmaCargaHora">
                        </div>
                    </div>

                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Cadastrar</button>
                        <button type="reset" class="btn btn-primary">Limpar Campos</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
