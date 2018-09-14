<%@page import="web.java.admin.SessaoAdmin"%>
<%@page import="web.java.mapping.ListagemArquivos"%>

<%
    if (SessaoAdmin.verificaSessao(request, response)) {
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp"%>

<section class="content-header">
    <h1>Materiais Postados</h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp">
            <i class="fa fa-user-secret"></i> Admin</a></li>
        <li class="active">Repositório</li>
    </ol>
    <%@include file="/master/sessao.jsp" %>
</section>

<form action="${pageContext.request.contextPath}/fileupload" method="POST" 
    enctype="multipart/form-data">
    <div class="form-group">
        <label for="fileName">Nome do Arquivo a baixar</label>
        <input type="text" class="form-control" id="fileName" name="file_name" placeholder="Nome do Arquivo">
        <input type="file" id="inputFile" name="arquivo">
        <button type="submit">Upload</button>
        <p class="help-block">Exemplo: .doc, .pdf, .txt, etc</p>
    </div>
</form>

<%
    String file_name = (String) request.getParameter("fileName");

    if (file_name != null) {
        out.println("<span class=\"span-file-result-done\">Arquivo \"<b>");
        out.println(file_name + "</b>\" foi adicionado ao diretório!</span>");
    } else {
        out.println("<span class=\"span-file-result-error\">Arquivo \"<b>");
        out.println(file_name + "</b>\" não pôde ser baixado no diretório</span>");
    }
%>
    
<div class="row">
    <div class="col-xs-12">
        <div class="box-header with-border">
            <h3 class="box-title">Opções de Arquivos</h3>
        </div>
        <div class="box-body">
            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-default">
                Procurar Arquivo
            </button>
            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-info">
                Enviar para um Colega
            </button>
        </div>
    </div>
</div>

<div class="listaArquivo">
    <%
        out.print(ListagemArquivos.carregaTabelaArquivo());
    %>
</div>

<%@include file="/master/rodape.jsp"%>

<%
    }
%>