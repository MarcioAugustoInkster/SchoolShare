<%@page import="web.java.dao.PessoaDAO"%>
<%@page import="web.java.dao.CursoDAO"%>
<%@page import="web.java.classe.CursoBean"%>
<%@page import="web.java.classe.PessoaBean"%>
<%@page import="java.util.List"%>
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
                                    List<PessoaBean> pessoa = new PessoaDAO().listaNomeProfessor();

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
                                    List<CursoBean> curso = new CursoDAO().listaCurso();
                                    
                                    for (CursoBean lista : curso) {
                                %>
                                <option value="<%=lista.getId() %>"><%=lista.getCurso() %></option>
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
                            <select class="form-control" id="campoTurmaCargaHora" name="turmaCargaHora">
                                <option value="12">12</option>
                                <option value="20">20</option>
                                <option value="24">24</option>
                                <option value="30">30</option>
                                <option value="36">36</option>
                                <option value="38">38</option>
                                <option value="40">40</option>
                                <option value="42">42</option>
                                <option value="44">44</option>
                                <option value="48">48</option>
                                <option value="52">52</option>
                                <option value="54">54</option>
                                <option value="60">60</option>
                                <option value="66">66</option>
                                <option value="70">70</option>
                                <option value="72">72</option>
                                <option value="76">76</option>
                                <option value="80">80</option>
                                <option value="90">90</option>
                                <option value="100">100</option>
                            </select>
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
