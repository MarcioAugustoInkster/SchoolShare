<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Notas <small>Início</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Notas</li>
    </ol>
</section>

<section class="content">
    <div class="col-default-guide-sh" onclick="onNotesRegister();">
        <div class="content-inside-title">
            <label>Lançar Nota</label>
        </div>
        <div class="content-inside-box">
            <div class="box-body">
                <span class="info-box-icon bg-red-gradient">
                    <i class="fa fa-plus-circle"></i>
                </span>
            </div>
        </div>
    </div>

    <div class="col-default-guide-sh" onclick="onNotesList();">
        <div class="content-inside-title">
            <label>Lista Notas</label>
        </div>
        <div class="content-inside-box">
            <div class="box-body">
                <span class="info-box-icon bg-red-gradient">
                    <i class="fa fa-list-alt"></i>
                </span>
            </div>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
