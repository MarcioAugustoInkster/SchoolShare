<%@page import="web.java.dao.PessoaDAO"%>
<%@page import="web.java.classe.PessoaBean"%>
<%@page import="web.java.dao.TurmaDAO"%>
<%@page import="web.java.classe.TurmaBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Registro de Matricula <small>Início</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Matricula</li>
    </ol>
</section>

<section class="content">
    <div class="box">
        <div class="box-body">
            <div class="col-default-guide-sh" onclick="onEnrollmentRegister();">
                <div class="content-inside-title">
                    <label>Registro</label>
                </div>
                <div class="content-inside-box">
                    <div class="box-body">
                        <span class="info-box-icon bg-red-gradient">
                            <i class="fa fa-archive"></i>
                        </span>
                    </div>
                </div>
            </div>
            
            <div class="col-default-guide-sh" onclick="onEnrollmentList();">
                <div class="content-inside-title">
                    <label>Listagem</label>
                </div>
                <div class="content-inside-box">
                    <div class="box-body">
                        <span class="info-box-icon bg-red-gradient">
                            <i class="fa fa-list-alt"></i>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
