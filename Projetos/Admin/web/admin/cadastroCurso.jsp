<%@page import="web.java.dao.InstituicaoDAO"%>
<%@page import="web.java.classe.InstituicaoBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Cursos <small>Cadastro</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/cursoIndex.jsp"><i class="fa fa-plus-circle"></i> Registrar</a></li>
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
                                <option value="<%=lista.getId()%>">
                                    <%=lista.getNome()%></option>
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
