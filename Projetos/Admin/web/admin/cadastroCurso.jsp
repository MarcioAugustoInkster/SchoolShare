<%@page import="web.java.dao.InstituicaoDAO"%>
<%@page import="web.java.classe.InstituicaoBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Cursos <small>Cadastro</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/cursoIndex.jsp"><i class="fa fa-book"></i> Registrar</a></li>
        <li class="active">Cadastro de Curso</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Cadastro de Curso</h3>
                </div>

                <form action="/registroCurso" method="POST" role="form">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="cursoInstituicao">Selecione uma Instituição</label>
                            <select class="form-control" id="cursoInstituicao" 
                                    name="selectCursoInstituicao">
                                <%
                                    List<InstituicaoBean> instituicao = new InstituicaoDAO().nomeInstituicao();

                                    for (InstituicaoBean lista : instituicao) {
                                %>
                                <option value="<%=lista.getId()%>"><%=lista.getInstituicao()%></option>
                                <%
                                    }
                                %>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="cursoNome">Nome do Curso</label>
                            <input type="text" class="form-control" id="cursoNome" 
                                   name="campoCursoNome"  placeholder="Nome ou Descrição">
                        </div>

                        <div class="form-group">
                            <label for="cursoHoras">Carga Horária</label>
                            <small>&nbsp;&nbsp;&nbsp;Exemplo: 30 (horas)</small>
                            <select class="form-control" id="cursoHoras" name="selectCursoHora">
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
                                <option value="115">115</option>
                                <option value="120">120</option>
                                <option value="124">124</option>
                                <option value="128">128</option>
                                <option value="132">132</option>
                                <option value="140">140</option>
                                <option value="144">144</option>
                                <option value="146">146</option>
                                <option value="150">150</option>
                                <option value="155">155</option>
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
