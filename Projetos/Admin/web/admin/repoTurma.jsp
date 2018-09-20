<%@page import="web.java.directory.FolderDirectory"%>
<%@page import="java.util.List"%>
<%@page import="web.java.dao.InstituicaoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Instituições <small>Repositório</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/repoIndex.jsp"><i class="fa fa-folder"></i> Repositório de Arquivos</a></li>
        <li class="active">Curso</li>
    </ol>
</section>

<section class="content">
    <div class="post">
        <h4>Escolha na lista o destino para repositório de Turmas</h4>
    </div>

    <div class="post clearfix">
        <div class="class-folder-list">
            <ol>
                <%
                    FolderDirectory folder = new FolderDirectory();
                    List<String> instituicao = folder.findFoldersInDirectory(request, 1);
                    int counter = 0;

                    for (String folders : instituicao) {
                        counter = counter + 1;
                %>
                <li>
                    <span class="icon-box-folder">
                        <i class="fa fa-archive">
                            <a href="#" class="listaEmpresa"><%=folders%></a>
                        </i>
                    </span>
                    
                    <ol class="listagemCurso" style="clear:both;"></ol>
                </li>
                <%
                    }
                %>
            </ol>
        </div>
    </div>

    <div class="post">
        <% if (counter == 0) { %>
        <label>Não existe ainda folders disponíveis</label>
        <% } else {%>
        <label>Existem&nbsp;<%=counter%>&nbsp;folders disponíveis</label>
        <% }%>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
