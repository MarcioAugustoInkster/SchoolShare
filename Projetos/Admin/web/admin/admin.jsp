<%@page import="web.java.mapping.Listas"%>
<%@page import="web.java.classe.PessoaBean"%>
<%@page import="java.util.List"%>
<%@page import="web.java.dao.AdminDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Painel de Administrador <small>Início</small></h1>
    <ol class="breadcrumb">
        <li><a href="/home"><i class="fa fa-dashboard"></i> Index</a></li>
        <li class="active">Gerenciar Admin</li>
    </ol>
</section>

<section class="content">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Administradores do Sistema</h3>
        </div>
        <div class="box-body">
            <table id="tabelaAdmin" class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Administrador</th>
                        <th>E-mail</th>
                        <th>Usuário</th>
                        <th>Tipo</th>
                        <th>Ativo</th>
                        <th>Opções</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<PessoaBean> admin = AdminDAO.listaAdministrador();
                        for (PessoaBean listagem : admin) {
                            String active = "";

                            if (listagem.isAtivo() != false) {
                                active = "Sim";
                            } else {
                                active = "Não";
                            }
                    %>
                    <tr><td><%=listagem.getNome()%>
                        <td><%=listagem.getEmail()%></td>
                        <td><%=listagem.getLogin()%></td>
                        <%
                            String tipo = Listas.tipoUsuario(listagem.getTipo());
                        %>
                        <td><%=tipo%></td>

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
