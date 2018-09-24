<%-- 
    Document   : Marcio
    Created on : 03/09/2018, 08:24:29
    Author     : Marcio
--%>
<%@page import="web.java.admin.SessaoAdmin"%>
<%
    String iniciaSessao = "";
    
    if (SessaoAdmin.verificaSessao(request, response)) {
        iniciaSessao = SessaoAdmin.retornaSessao(request);
    }
%>

<header class="main-header">
    <a href="/index.jsp" class="logo">
        <span class="logo-mini"><b>S</b>S</span>
        <span class="logo-lg"><b>School</b>Share</span>
    </a>

    <nav class="navbar navbar-static-top">
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span>Bem vindo <b><%= iniciaSessao %></b>!</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="/admin" class="btn btn-default btn-flat">Gerenciar Admin</a>
                            </div>
                            <div class="pull-right">
                                <a href="/validaLogin" class="btn btn-default btn-flat">Encerrar Sessão</a>
                            </div>
                        </li>
                    </ul>
                </li>
                
                <li>
                    <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                </li>
            </ul>
        </div>
    </nav>
</header>
