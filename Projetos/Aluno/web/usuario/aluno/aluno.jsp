<%-- 
    Document   : SchoolShare
    Created on : Um dia qualquer...
    Author     : Daiana
--%>


<%@include file="/master/master.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="content-header">
  <h1>Acesso Aluno</h1>
  <ol class="breadcrumb">
        <li><i class="fa fa-user-secret"></i> Início</a></li>
  </ol>
</section>

<div class="row">
  <div class="col-md-12">
    <!-- USERS LIST -->
    <div class="box box-danger">
      <div class="box-header with-border">
        <h3 class="box-title">Aluno Entra 21</h3>
      </div>
      <!-- /.box-header -->
      <div class="box-body no-padding">
        <ul class="users-list clearfix">
          <li>
            <a class="users-list-name" href="perfilAluno.jsp"></a>
            <span class="users-list-date">Perfil</span>
          </li>
          <li>
            <a class="users-list-name" href="avaliacaoAluno.jsp"></a>
            <span class="users-list-date">Avaliação</span>
          </li>
          <li>
            <a class="users-list-name" href="frequencia.jsp"></a>
            <span class="users-list-date">Frequencia</span>
          </li>
          <li>
            <a class="users-list-name" href="turma.jsp"></a>
            <span class="users-list-date">Turma</span>
          </li>
          
        </ul>
        <!-- /.users-list -->
      </div>
      <!-- /.box-body -->
      <div class="box-footer text-center">
        <a href="/javawebadmin/usuario/aluno/aluno.jsp" class="uppercase">Encerrar Sessão</a>
      </div>
      <!-- /.box-footer -->
    </div>
    <!--/.box -->
  </div>
  <!-- /.col -->
</div>
<!-- /.row -->

<%@include file="/master/rodape.jsp" %>