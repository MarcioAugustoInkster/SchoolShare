<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/master/scripts.jsp" %>
<%@include file="/master/css.jsp" %>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Cadastro<small>Notas</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/notaIndex.jsp"><i class="fa fa-home"></i> Notas</a></li>
        <li class="active">Registrar</li>
    </ol>
</section>
<script language='JavaScript'>
function SomenteNumero(e){
    var tecla=(window.event)?event.keyCode:e.which;   
    if((tecla>45 && tecla<58)) return true;
    else{
    	if (tecla==8 || tecla==0) return true;
	else  return false;
    }
}

</script>

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
                            <input type='text' size='10' value='' min="1" max="10" id="nota1" name="nota1"
                                maxlength="3" placeholder="1° nota" onkeypress='return SomenteNumero(event)'> 
                            
                        <div class="form-group">
                            <label for="nota2">2° bimestre</label>
                            <input type='text' size='10' value='' min="1" max="10" id="nota2" name="nota2"
                                maxlength="3" placeholder="2° nota" onkeypress='return SomenteNumero(event)'> 
                            
                        <div class="form-group">
                            <label for="nota3">3° bimestre</label>
                            <input type='text' size='10' value='' min="1" max="10" id="nota3" name="nota3"
                                maxlength="3" placeholder="3° nota" onkeypress='return SomenteNumero(event)'> 
                            
                        <div class="form-group">
                            <label for="nota4">4° bimestre</label>
                            <input type='text' size='10' value='' min="1" max="10" id="nota4" name="nota4"
                                maxlength="3" placeholder="4° nota" onkeypress='return SomenteNumero(event)'> 
                            
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
