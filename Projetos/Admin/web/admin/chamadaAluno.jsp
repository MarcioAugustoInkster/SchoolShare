<%@page import="web.java.dao.AlunoDAO"%>
<%@page import="web.bean.AlunoBean"%>
<%@page import="java.util.List"%>
<%@page import="web.java.classe.NotaBean"%>
<%@page import="web.java.dao.NotaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/master/master.jsp" %>
<%@include file="/master/scripts.jsp" %>
<%@include file="/master/css.jsp" %>

<section class="content-header">
    <h1>Cadastro<small>Notas</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/notaIndex.jsp"><i class="fa fa-home"></i> Notas</a></li>
        <li class="active">Registrar</li>
    </ol>
</section>
<!-- tabela Frequencia -->
            <%  List<AlunoBean> Nome = new AlunoDAO().obterTodos();%>
<div class="row">
    <div class="col-md-12">
        <div class="box box-primary ">
            <div class="box-header with-border">
                
            </div>
            <div class="box-bod">

                <table class="table table-striped tabela-avaliacao">
                    <thead>
                        <tr>
                            <td class="col-md-2"> Nome</td>
                            <td class="col-md-1"> Seg </td>
                            <td class="col-md-1"> Ter </td>
                            <td class="col-md-1"> Qua </td>
                            <td class="col-md-1"> Qui </td>
                            <td class="col-md-1"> Sex </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <% for (AlunoBean nome : Nome) {%>
                            <td>
                                <th><%=nome.getNome()%></th>
                            <td><input type="radio" class="" id="seg" name="aulaHoje" value=""></td>
                            <td><input type="radio" class="" id="ter" name="aulaHoje" value=""></td> 
                            <td><input type="radio" class="" id="qua" name="aulaHoje" value=""></td> 
                            <td><input type="radio" class="" id="qui" name="aulaHoje" value=""></td>
                            <td><input type="radio" class="" id="sex" name="aulaHoje" value=""></td>
                        </tr>

                        
                        <tr>
                            <td>
                                <div>Observações</div>
                            </td>
                            <td colspan="10"><textarea>
                                
                                </textarea></td>

                        </tr>
                    </tbody>    
                </table>
            </div>
        </div>

    </div>
</div>

<button>
    <label>Salvar</label>
</button>
</tr>


</body>

<%@include file="/master/rodape.jsp" %>    
