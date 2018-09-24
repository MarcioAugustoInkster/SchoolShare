<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Painel de Controle <small>Início</small></h1>
</section>

<div class="col-default-guide-sh" onclick="onInstituitionIndex();">
    <div class="content-inside-title">
        <label>Instituições</label>
    </div>
    <div class="content-inside-box">
        <div class="box-body">
            <span class="info-box-icon bg-red-gradient">
                <i class="fa fa-home"></i>
            </span>
        </div>
    </div>
</div>

<div class="col-default-guide-sh" onclick="onNotaIndex();">
    <div class="content-inside-title">
        <label>Notas Alunos</label>
    </div>
    <div class="content-inside-box">
        <div class="box-body">
            <span class="info-box-icon bg-red-gradient">
                <i class="fa fa-home"></i>
            </span>
        </div>
    </div>
</div>

<div class="col-default-guide-sh" onclick="onCourseIndex();">
    <div class="content-inside-title">
        <label>Cursos</label>
    </div>
    <div class="content-inside-box">
        <div class="box-body">
            <span class="info-box-icon bg-red-gradient">
                <i class="fa fa-book"></i>
            </span>
        </div>
    </div>
</div>

<div class="col-default-guide-sh" onclick="onTeacherIndex();">
    <div class="content-inside-title">
        <label>Professores</label>
    </div>
    <div class="content-inside-box">
        <div class="box-body">
            <span class="info-box-icon bg-red-gradient">
                <i class="fa fa-address-card"></i>
            </span>
        </div>
    </div>
</div>

<div class="col-default-guide-sh" onclick="onStudentIndex();">
    <div class="content-inside-title">
        <label>Alunos</label>
    </div>
    <div class="content-inside-box">
        <div class="box-body">
            <span class="info-box-icon bg-red-gradient">
                <i class="fa fa-users"></i>
            </span>
        </div>
    </div>
</div>

<div class="col-default-guide-sh" onclick="onClassIndex();">
    <div class="content-inside-title">
        <label>Turmas</label>
    </div>
    <div class="content-inside-box">
        <div class="box-body">
            <span class="info-box-icon bg-red-gradient">
                <i class="fa fa-user-circle"></i>
            </span>
        </div>
    </div>
</div>

<div class="col-default-guide-sh" onclick="onEnrollmentIndex();">
    <div class="content-inside-title">
        <label>Matrícula</label>
    </div>
    <div class="content-inside-box">
        <div class="box-body">
            <span class="info-box-icon bg-red-gradient">
                <i class="fa fa-archive"></i>
            </span>
        </div>
    </div>
</div>

<div class="col-default-guide-sh" onclick="onFrequencyIndex();">
    <div class="content-inside-title">
        <label>Frequencia</label>
    </div>
    <div class="content-inside-box">
        <div class="box-body">
            <span class="info-box-icon bg-red-gradient">
                <i class="fa fa-calculator"></i>
            </span>
        </div>
    </div>
</div>

<div class="col-default-guide-sh" onclick="onNotesIndex();">
    <div class="content-inside-title">
        <label>Notas</label>
    </div>
    <div class="content-inside-box">
        <div class="box-body">
            <span class="info-box-icon bg-red-gradient">
                <i class="fa fa-sticky-note"></i>
            </span>
        </div>
    </div>
</div>

<!--

ANOTHER BOX SELECT CONTENT

-->
<!--
<div class="col-default-guide-sh">
    <div class="content-inside-title">
        <label>Calendário</label>
    </div>
    <div class="content-inside-box">
        <div class="box-body">
            <span class="info-box-icon bg-red-gradient">
                <i class="fa fa-calendar"></i>
            </span>
        </div>
    </div>
</div>
-->
<!--
<div class="col-default-guide-sh">
    <div class="content-inside-title">
        <label>Notas</label>
    </div>
    <div class="content-inside-box">
        <div class="box-body">
            <span class="info-box-icon bg-red-gradient">
                <i class="fa fa-list-alt"></i>
            </span>
        </div>
    </div>
</div>
-->
<div class="col-default-guide-sh" onclick="onRepoIndex();">
    <div class="content-inside-title">
        <label>Repositório</label>
    </div>
    <div class="content-inside-box">
        <div class="box-body">
            <span class="info-box-icon bg-red-gradient">
                <i class="fa fa-folder"></i>
                <!--<i class="fa fa-folder-open"></i>-->
            </span>
        </div>
    </div>
</div>

<%@include file="/master/rodape.jsp" %>
