<%@page import="web.java.admin.Mensagem"%>
<%@page import="web.java.dao.CursoDAO"%>
<%@page import="web.java.classe.CursoBean"%>
<%@page import="java.util.List"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="web.java.directory.DirFolderAccess"%>
<%@page import="java.nio.file.LinkOption"%>
<%@page import="java.nio.file.Files"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp"%>

<%
    try {
        DirFolderAccess dfa = new DirFolderAccess();
        
        int counter = 0;
        String folder = (String) request.getParameter("folder");
        String dir = dfa.uploadFullPath(request) + folder;
        Path path = Paths.get(dir);
%>

<section class="content-header">
    <h1>Repositório&nbsp;:&nbsp;<%=folder%></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/repoIndex.jsp"><i class="fa fa-folder"></i> Repositório de Arquivos</a></li>
        <li><a href="/admin/repoCurso.jsp"><i class="fa fa-folder-open"></i> Curso</a></li>
        <li class="active">Folder</li>
    </ol>
</section>

<%
    if (Files.exists(path, LinkOption.NOFOLLOW_LINKS)) {
        if (!request.getParameter("folder").equals("folder")) {
%>

<section class="content">
    <h4>Pesquise abaixo um Curso ou procure na lista</h4>

    <div class="form-group">
        <div class="input-group input-group-sm">
            <input type="text" class="form-control">
            <span class="input-group-btn">
                <button type="button" class="btn btn-primary btn-flat">Pesquisar</button>
            </span>
        </div>
    </div>

    <div class="post clearfix">
        <div class="form-group">
            <%
                List<CursoBean> cursos = new CursoDAO().listaCurso();
            %>
            <form action="/folderCurso" method="POST">
                <table id="tabelaCurso" class="table-bordered table-hover scroll-table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Instituição</th>
                            <th>Curso</th>
                            <th>Opções</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (CursoBean curso : cursos) {
                                counter = counter + 1;
                        %>
                        <tr>
                            <td><%=counter%></td>
                            <td><%=curso.getInstituicao()%></td>
                            <td><%=curso.getCurso()%></td>
                            <td><a href="/folderCurso?curso=<%=curso.getId()%>&repo=<%=folder %>" class="btn-custom btn-app-custom">
                                <i class="fa fa-upload"></i>Criar</a></td>
                        </tr>
                        <% }%>
                    </tbody>
                </table>
            </form>
        </div>

        <div class="table-list-brand">
            <label>Foram encontrados <b><%=counter%></b> curso(s) registrado(s)</label>
        </div>
    </div>
</section>

<%
            }
        } else {
            Mensagem.folderNaoEncontrado();
        }
    } catch (Exception ex) {
        ex.printStackTrace();

        Mensagem.folderNaoEncontrado();
    }
%>

<%@include file="/master/rodape.jsp"%>
