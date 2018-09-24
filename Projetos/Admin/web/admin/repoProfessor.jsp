<%@page import="web.java.classe.PessoaBean"%>
<%@page import="web.java.dao.PessoaDAO"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.io.FileFilter"%>
<%@page import="java.io.File"%>
<%@page import="web.java.directory.FolderDirectory"%>
<%@page import="java.util.List"%>
<%@page import="web.java.dao.InstituicaoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Professores <small>Repositório</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/repoIndex.jsp"><i class="fa fa-folder"></i> Repositório</a></li>
        <li class="active">Professor</li>
    </ol>
</section>

<section class="content">
    <div class="post">
        <h4>Escolha o Professor para o repositório a ser criado</h4>
    </div>

    <div class="post">
        <div class="input-group input-group-sm">
            <input type="text" class="form-control">
            <span class="input-group-btn">
                <button type="button" class="btn btn-info btn-flat">Pesquisa Professor</button>
            </span>
        </div>

        <div class="box-body">
            <table id="tabelaProfessor" class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Nome Completo</th>
                        <th>Gênero</th>
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
                        List<PessoaBean> professor = new PessoaDAO().listaProfessor();
                        for (PessoaBean listagem : professor) {
                            String active = "";

                            if (listagem.isAtivo() != false) {
                                active = "Sim";
                            } else {
                                active = "Não";
                            }
                    %>
                    <tr>
                        <td><%=listagem.getNome()%>&nbsp;<%=listagem.getSobrenome()%></td>
                        <%
                            String genero = "";

                            if (listagem.getSexo() == 'M' || listagem.getSexo() == 'm') {
                                genero = "fa-mars";
                            } else if (listagem.getSexo() == 'F' || listagem.getSexo() == 'f') {
                                genero = "fa-venus";
                            }
                        %>
                        <td><i class="fa <%=genero%>"></i></td>
                        <td><%=listagem.getDataDeNascimento()%></td>
                        <td><%=listagem.getEmail()%></td>
                        <td><%=listagem.getTelefone()%></td>
                        <td><%=listagem.getLogin()%></td>
                        <td><%=active%></td>
                        <td><a class="btn-custom btn-app-custom"><i class="fa fa-edit"></i> Edit</a></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>

    <div class="post clearfix">
        <div class="box-body">
            <form action="/repositorioTurma" method="POST">
                <div class="form-group">
                    <label for="listaEntidades">Selecione um Folder de Instituição</label>
                    <select class="form-control" id="listaEntidades" name="selectFolderEntidades">
                        <option>[ Escolha uma Instituição ]</option>
                        <%
                            FolderDirectory folderinstituicao = new FolderDirectory();
                            List<String> instituicao = folderinstituicao.procuraRepositorioMaster(request);

                            for (String folders : instituicao) {
                        %>
                        <option value="<%=folders%>"><%=folders%></option>
                        <%
                            }
                        %>
                    </select>

                </div>

                <div class="form-group" id="carregaCursos">

                </div>
            </form>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
