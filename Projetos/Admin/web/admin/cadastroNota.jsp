<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Cadastro<small>Notas</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/notaIndex.jsp"><i class="fa fa-home"></i> Notas</a></li>
        <li class="active">Registrar</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Cadastro de Notas</h3>
                </div>

                <form action="/registroNota" method="POST" role="form">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="nome">Nome do Aluno</label>
                            <input type="text" class="form-control" id="nome" 
                                   name="nome" placeholder="Nome do Aluno">
                            
                        <div class="form-group">
                            <label for="nota1">1° bimestre</label>
                            <input type="text" class="form-control" id="nota1"
                                   name="nota1" placeholder="1° nota">
                            
                        <div class="form-group">
                            <label for="nota2">2° bimestre</label>
                            <input type="text" class="form-control" id="nota2"
                                   name="nota2" placeholder="2° nota">
                            
                        <div class="form-group">
                            <label for="nota3"onkeypress="mascara(this, nota3)" maxlength="11"/>>3° bimestre</label>
                            <input type="text" class="form-control" id="nota3"
                                   name="nota3" placeholder="3° nota" >
                            
                        <div class="form-group">
                            <label for="nota4">4° bimestre</label>
                            <input type="text" class="form-control" id="nota4"
                                   name="nota4" placeholder="4° nota">
                        <div class="form-group">
                            <label for="frequencia">Frequencia</label>
                            <input type="text" class="form-control" id="frequencia" 
                                   name="frequencia" placeholder="frequencia">
                            </div>
                            
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Cadastrar</button>
                        <button type="reset" class="btn btn-primary">Limpar Campos</button>
                    </div>
                </form>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
