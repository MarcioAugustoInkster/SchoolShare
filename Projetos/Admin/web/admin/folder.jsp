<%@page import="java.util.Iterator"%>
<%@page import="web.java.dao.CursoDAO"%>
<%@page import="web.java.classe.InstituicaoBean"%>
<%@page import="web.java.classe.CursoBean"%>
<%@page import="web.java.admin.Mensagem"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.nio.file.LinkOption"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="web.java.directory.DirFolderAccess"%>
<%@page import="web.java.mapping.Listas"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp"%>

<%
    try {
        String folder = (String) request.getParameter("folder");
        String dir = DirFolderAccess.uploadFullPath(request) + folder;
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

    <div class="input-group input-group-sm">
        <input type="text" class="form-control">
        <span class="input-group-btn">
            <button type="button" class="btn btn-primary btn-flat">Pesquisar</button>
        </span>
    </div>

    <div class="post clearfix">
        <div class="form-group">
            <%
                List<CursoBean> curso = new CursoDAO().listaCurso();
                List<InstituicaoBean> instituicao = new CursoDAO().listaInstituicao();

                Iterator<CursoBean> itCurso = curso.iterator();
                Iterator<InstituicaoBean> itInst = instituicao.iterator();
            %>
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
                        int counter = 1;

                        while (itCurso.hasNext() && itInst.hasNext()) {
                    %>
                    <tr>
                        <td><%=counter++%></td>
                        <td><%=itInst.next().getNome()%></td>
                        <td><%=itCurso.next().getNome()%></td>
                        <td><a class="btn-custom btn-app-custom">
                            <i class="fa fa-upload" onclick="
                                onCreateCourseFolder('<%=folder%>,
                                <%=itCurso.next().getId() %>');">
                            </i>Criar</a></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>

    <div class="post">
        <%
            if (DirFolderAccess.diretorioVazio(path)) {
                out.println("<div class=\"alert alert-info alert-dismissible\">");
                out.println("<h4><i class=\"icon fa fa-info\"></i> Repositório vazio</h4>");
                out.println("Ainda não existem conteúdos para este repositório");
                out.println("</div>");
            }
        %>
    </div>
</section>

<%
            }
        } else {
            Mensagem.folderNaoEncontrado();
        }
    }catch (Exception ex) {
        ex.printStackTrace();

        Mensagem.folderNaoEncontrado();
    }
%>

<%@include file="/master/rodape.jsp"%>
