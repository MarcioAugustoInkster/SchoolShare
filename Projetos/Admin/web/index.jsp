<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Painel de Controle <small>Início</small></h1>
</section>

<!-- Container para Cadastro de Entidades -->
<div class="col-md-12">
    <div class="ink-header-top">
        <h2>Entidades e Módulos</h2>
    </div>

    <div class="col-default-guide-sh" onclick="onInstituitionIndex();">
        <div class="content-inside-title">
            <label>Instituição</label>
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
            <label>Curso</label>
        </div>
        <div class="content-inside-box">
            <div class="box-body">
                <span class="info-box-icon bg-red-gradient">
                    <i class="fa fa-book"></i>
                </span>
            </div>
        </div>
    </div>

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
</div>

<!-- Container para Cadastro de Usuários -->
<div class="col-md-12">
    <div class="ink-header-top">
        <h2>Usuários e Integrantes</h2>
    </div>

    <div class="col-default-guide-sh" onclick="onTeacherIndex();">
        <div class="content-inside-title">
            <label>Professor</label>
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
            <label>Aluno</label>
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
            <label>Turma</label>
        </div>
        <div class="content-inside-box">
            <div class="box-body">
                <span class="info-box-icon bg-red-gradient">
                    <i class="fa fa-user-circle"></i>
                </span>
            </div>
        </div>
    </div>
</div>

<!-- Container para Cadastro de Integração Escolar -->
<div class="col-md-12">
    <div class="ink-header-top">
        <h2>Integração Escolar</h2>
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

    <div class="col-default-guide-sh" onclick="onNotaIndex();">
        <div class="content-inside-title">
            <label>Avaliação</label>
        </div>
        <div class="content-inside-box">
            <div class="box-body">
                <span class="info-box-icon bg-red-gradient">
                    <i class="fa fa-sticky-note"></i>
                </span>
            </div>
        </div>
    </div>

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
</div>

<%@include file="/master/rodape.jsp" %>
