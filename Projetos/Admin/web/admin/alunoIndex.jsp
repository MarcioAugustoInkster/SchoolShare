<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Alunos <small>Início</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Admin</li>
    </ol>
</section>

<section class="content">
    <div class="col-default-guide-sh" onclick="onStudentRegister();">
        <div class="content-inside-title">
            <label>Registrar</label>
        </div>
        <div class="content-inside-box">
            <div class="box-body">
                <span class="info-box-icon bg-red-gradient">
                    <i class="fa fa-plus-circle"></i>
                </span>
            </div>
        </div>
    </div>

    <div class="col-default-guide-sh" onclick="onStudentList();">
        <div class="content-inside-title">
            <label>Ver Lista</label>
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
