<%@page import="web.java.classe.InstituicaoBean"%>
<%@page import="java.util.List"%>
<%@page import="web.java.dao.InstituicaoDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Instituição <small>Repositório</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-folder"></i> Início</a></li>
        <li><a href="/admin/repoIndex.jsp"><i class="fa fa-folder-open"></i> Repositório de Arquivos</a></li>
        <li class="active">Instituição</li>
    </ol>
</section>

<section class="content">
    <div class="post">
        <h4>Selecione uma Instituição e crie um repositório</h4>

        <div class="input-group input-group-sm">
            <input type="text" class="form-control">
            <span class="input-group-btn">
                <button type="button" class="btn btn-info btn-flat">Pesquisar</button>
            </span>
        </div>
    </div>

    <div class="post clearfix">
        <%
            List<InstituicaoBean> instituicao = new InstituicaoDAO().listaInstituicao();

            StringBuilder sb = new StringBuilder();
        %>
        <table id="tabelaInstituicao" class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Instituição</th>
                    <th>Endereço</th>
                    <th>Bairro</th>
                    <th>Cidade - Estado</th>
                    <th><i class="fa fa-upload"></i></th>
                </tr>
            </thead>
            <tbody>
                <%
                    int counter = 1;

                    for (InstituicaoBean listagem : instituicao) {
                %>
                <tr>
                    <td><%=counter++%></td>
                    <td><%=listagem.getInstituicao()%></td>
                    <td><%=listagem.getEndereco()%></td>
                    <td><%=listagem.getBairro()%></td>
                    <td><%=listagem.getCidade()%> - <%=listagem.getEstado()%></td>
                    <td><a class="btn-custom btn-app-custom">
                        <i class="fa fa-upload" onclick="onCreateFolder(<%=listagem.getId()%>);">
                        </i> Criar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>

    <div class="post">

    </div>
</section>

<%@include file="/master/rodape.jsp" %>
