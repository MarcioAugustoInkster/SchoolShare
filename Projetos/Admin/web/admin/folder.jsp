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
        <li><a href="/index.jsp"><i class="fa fa-folder"></i> Início</a></li>
        <li><a href="/admin/repoIndex.jsp"><i class="fa fa-folder-open"></i> Repositório de Arquivos</a></li>
        <li><a href="/admin/repoCurso.jsp"><i class="fa fa-folder-o"></i> Curso</a></li>
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
    
    <div class="input-group input-group-sm">
        <div class="form-group">
            <table>
                <tr>
                    <td>
                        <button type="button" class="btn btn-block btn-primary btn-sm">Criar Repositório</button>
                    </td>
                </tr>
            </table>
        </div>
    </div>

    <div class="post clearfix">
        <div class="form-group">
            <table class="scroll-table">
                <thead>
                    <tr>
                        <th>Head 1</th>
                        <th>Head 2</th>
                        <th>Head 3</th>
                        <th>Head 4</th>
                        <th>Head 5</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Content 1</td>
                        <td>Content 2</td>
                        <td>Content 3</td>
                        <td>Content 4</td>
                        <td>Content 5</td>
                    </tr>
                </tbody>
            </table>
            
            <label>Lista de Cursos ativo</label>
            <select multiple="" class="form-control">
                <%
                int count = 1;
                String[] cursos = Listas.listaCursosEntra21();

                for (String lista : cursos) {
                %>
                <option value="<%=count++%>"><%=lista%></option>
                <%
                }
                %>
            </select>
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
    } catch (Exception ex) {
        ex.printStackTrace();

        Mensagem.folderNaoEncontrado();
    }
%>

<%@include file="/master/rodape.jsp"%>
