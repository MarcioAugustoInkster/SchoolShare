<%@page import="web.java.mapping.DataFormatter"%>
<%@page import="web.java.dao.ProfessorDAO"%>
<%@page import="java.util.List"%>
<%@page import="web.java.classe.PessoaBean"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Lista de Professores <small>Tabela</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/professorIndex.jsp"><i class="fa fa-address-card"></i> Professores</a></li>
        <li class="active">Ver Lista</li>
    </ol>
</section>

<section class="content">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Lista de Professores Registrados</h3>
        </div>
        <div class="box-body">
            <div class="form-group">
                <input type="text" class="form-control" id="consultaListaProfessor" name="consultaListaProfessor"
                    placeholder="Pesquise na tabela por...">
            </div>

            <table id="tabelaProfessor" class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Nome Completo</th>
                        <th>Data Nascimento</th>
                        <th>E-mail</th>
                        <th>Telefone</th>
                        <th>Usuário</th>
                        <th>Ativo</th>
                        <th>Opções</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<PessoaBean> professor = new ProfessorDAO().listaProfessor();
                        DataFormatter df = new DataFormatter();

                        for (PessoaBean listagem : professor) {
                            String active = "";

                            if (listagem.isAtivo() != false) {
                                active = "Sim";
                            } else {
                                active = "Não";
                            }
                            
                            String dataPadrao = df.dataParaBR(listagem.getDataDeNascimento());
                    %>
                    <tr>
                        <td><%=listagem.getNomeCompleto()%></td>
                        <td><%=dataPadrao%></td>
                        <td><%=listagem.getEmail()%></td>
                        <td><%=listagem.getTelefone()%></td>
                        <td><%=listagem.getLogin()%></td>
                        <td><%=active%></td>
                        <td><a class="btn-custom btn-app-custom"><i class="fa fa-edit"></i> Editar</a></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
