<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Deu tudo certo!</h1>
</section>

<div class="box-body">
    <div class="alert alert-success alert-dismissible">
        <h4><i class="icon fa fa-check"></i> Sucesso</h4>
        Repositório criado com êxito no diretório
    </div>
</div>

<section class="content-header">
    <div class="message-below">
        <ol class="breadcrumb">
            <li>
                Você pode <b><a href="/admin/repoIndex.jsp">Retornar</a></b>
                ou ir para a página de <b><a href="/index.jsp">Início</a></b>
            </li>
        </ol>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
