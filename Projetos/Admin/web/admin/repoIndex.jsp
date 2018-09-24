<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Repositório de Arquivos <small>Gerenciamento</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Repositório de Arquivos</li>
    </ol>
</section>

<section class="content">
    <h5><b>Observação:</b> Os diretórios serão criados para armazenamento de arquivos</h5>
    
    <div class="col-default-guide-sh" onclick="onRepoInstitution();">
        <div class="content-inside-title">
            <label>Instituição</label>
        </div>
        <div class="content-inside-box">
            <div class="box-body">
                <span class="info-box-icon bg-red-gradient">
                    <i class="fa fa-folder-open"></i>
                </span>
            </div>
        </div>
    </div>
    
    <div class="col-default-guide-sh" onclick="onRepoCourse();">
        <div class="content-inside-title">
            <label>Curso</label>
        </div>
        <div class="content-inside-box">
            <div class="box-body">
                <span class="info-box-icon bg-red-gradient">
                    <i class="fa fa-folder-open"></i>
                </span>
            </div>
        </div>
    </div>
    
    <div class="col-default-guide-sh" onclick="onRepoClass();">
        <div class="content-inside-title">
            <label>Turma</label>
        </div>
        <div class="content-inside-box">
            <div class="box-body">
                <span class="info-box-icon bg-red-gradient">
                    <i class="fa fa-folder-open"></i>
                </span>
            </div>
        </div>
    </div>
    
    <div class="col-default-guide-sh" onclick="onRepoTeacher();">
        <div class="content-inside-title">
            <label>Professor</label>
        </div>
        <div class="content-inside-box">
            <div class="box-body">
                <span class="info-box-icon bg-red-gradient">
                    <i class="fa fa-folder-open"></i>
                </span>
            </div>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
