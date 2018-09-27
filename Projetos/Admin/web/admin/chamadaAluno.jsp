<%@page import="web.java.dao.TurmaDAO"%>
<%@page import="web.java.classe.TurmaBean"%>
<%@page import="java.util.List"%>
<%@page import="web.java.classe.NotaBean"%>
<%@page import="web.java.dao.NotaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Cadastro<small>Chamada</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/notaIndex.jsp"><i class="fa fa-home"></i> Chamada Aluno</a></li>
        <li class="active">Registrar</li>
    </ol>
</section>
<!-- tabela Frequencia -->
<div class="row">
    <div class="col-md-12">
        <div class="box box-primary ">
            <div class="box-body">
                <div class="tabela-componentes-chamada">
                    <label>Calendario</label>
                    <input class="date" type="date" id="data" name="date" required="required">
                    <label>Turma</label>

                    <select class="col-md-1" id="campoTurmaProfessor" name="turmaProfessor">
                    <%
                        List<TurmaBean> pessoa = new TurmaDAO().listaTurma();

                        for (TurmaBean lista : pessoa) {
                    %>
                    <option value="<%=lista.getId()%>">
                        <%=lista.getTurma()%>&nbsp;<%=lista.getTurma()%>
                    </option>
                    <%
                        }
                    %>
                    </select>

                </div>
                    <div class=text-right>
                    <button type="submit" class="btn btn-primary" style=" margin-left: 10px">Carregar</button>
                    </div>
                <table class="table table-striped table-bordered">
                    <thead>
                    <tr>
                        <th class="col-md-2"> Nome </th>
                        <th class="col-md-1"> Turma</th>
                        <th class="col-md-1"> Data</th>
                        <th class="col-md-1"> Chamada</th>
                    </tr>
                    </thead>
                    <tbody>
                        <%
                        for (TurmaBean lista : pessoa){
                        %>
                        <tr>
                            <td><%=lista.getNome()%></td> 
                            <td><%=lista.getTurma()%></td> 
                            <td><%=lista.getData()%></td>
                            <td><input type="radio" <%=lista.getChamada()%>></td>
                            <span id="resultado"></span>
                            <input type="hidden" id="hidden_teste" name="hidden_teste" />
                        </tr>
                            <tr>
                            <%
                        }
                    %>
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
<button type="submit" class="btn btn-primary">Salvar</button>



</body>

<%@include file="/master/rodape.jsp" %>    
