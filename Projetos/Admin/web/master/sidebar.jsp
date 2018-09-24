<%-- 
    Document   : Marcio
    Created on : 03/09/2018, 08:24:29
    Author     : Marcio
--%>
<%@page import="web.java.admin.SessaoAdmin"%>

<aside class="main-sidebar">
    <section class="sidebar">
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">PAINEL DE ACESSO</li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-key"></i> <span>Admin</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="/admin"><i class="fa fa-user-secret"></i> Entrar na Conta</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-user-circle"></i> <span>Professores</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-user-plus"></i> Cadastrar Novo</a></li>
                    <li><a href="#"><i class="fa fa-list"></i> Consulta Todos</a></li>
                    <li><a href="#"><i class="fa fa-edit"></i> Editar</a></li>
                    <li><a href="#"><i class="fa fa-search"></i> Pesquisar</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-users"></i> <span>Alunos</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-user-plus"></i> Cadastrar Novo</a></li>
                    <li><a href="#"><i class="fa fa-list"></i> Consulta Todos</a></li>
                    <li><a href="#"><i class="fa fa-edit"></i> Editar</a></li>
                    <li><a href="#"><i class="fa fa-search"></i> Pesquisar</a></li>
                </ul>
            </li>
        </ul>
    </section>
</aside>
<div class="content-wrapper">
