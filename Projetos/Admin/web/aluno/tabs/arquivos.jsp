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
            <label for="fileName">Upload de Arquivos</label>
            <input type="text" class="form-control" id="fileName" name="file_name" placeholder="Nome do Arquivo">
        </div>
        
        <div class="form-group">
            <input type="file" id="inputFile" name="arquivo">
            <p class="help-block">Exemplo: .doc, .pdf, .txt, etc</p>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">Baixar Arquivo</button>
        </div>
    </form>

    <div class="listaArquivo"></div>    
</div>
