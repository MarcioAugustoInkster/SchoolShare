<%@page import="web.java.directory.FolderDirectory"%>
<%@page import="java.util.List"%>
<%@page import="web.java.dao.InstituicaoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Curso <small>Repositório</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/repoIndex.jsp"><i class="fa fa-folder"></i> Repositório de Arquivos</a></li>
        <li class="active">Curso</li>
    </ol>
</section>

<section class="content">
    <div class="post">
        <h4>Folder de Instituições disponíveis</h4>
    </div>

    <div class="post clearfix">
        <%
            FolderDirectory folder = new FolderDirectory();
            List<String> instituicao = folder.findFoldersInDirectory(request);
            int counter = 0;

            for (String folders : instituicao) {
                counter = counter + 1;
        %>
        <div class="col-default-guide-sh" id="testrepo" onclick="getRepoInstitution('<%=folders%>')">
            <div class="content-inside-title">
                <label><%=folders%></label>
            </div>
            <div class="content-inside-box">
                <div class="box-body">
                    <span class="info-box-icon bg-red-gradient">
                        <i class="fa fa-folder-o"></i>
                    </span>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>

    <div class="post">
        <% if (counter == 0) { %>
        <label>Não existe ainda folders disponíveis</label>
        <% } else { %>
        <label>Existem&nbsp;<%=counter%>&nbsp;folders disponíveis</label>
        <% } %>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
