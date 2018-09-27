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
                </li>
                
                <li class="dropdown user user-menu" title="Encerrar Sessão">
                    <a href="/validaLogin">
                        <i class="fa fa-power-off"></i>
                    </a>
                </li>
            </ul>
        </div>
    </nav>
</header>
