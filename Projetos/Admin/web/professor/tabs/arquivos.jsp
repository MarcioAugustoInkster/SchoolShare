<%-- 
    Document   : arquivos
    Created on : 27/09/2018, 03:58:08
    Author     : Freakazed-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="form-group">
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

    <div class="listaArquivo"></div>    
</div>
