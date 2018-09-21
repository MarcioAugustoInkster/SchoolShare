

<%
    //if (SessaoAdmin.verificaSessao(request, response)) {
%>

<aside class="main-sidebar">
    <section class="sidebar">
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">PAINEL DE ACESSO</li>
            <!--<li class="treeview">
                <a href="#">
                    <i class="fa fa-key"></i> <span>Professor</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="/admin"><i class="fa fa-user-secret"></i> Entrar na Conta</a></li>
                </ul>
            </li>
            -->

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-user-circle"></i> <span>Gerenciar Dados</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="/turmas"><i class="fa fa-user-plus"></i> Turmas</a></li>
                    <li><a href="#"><i class="fa fa-edit"></i> Instituições</a></li>
                    <li><a href="#"><i class="fa fa-search"></i> Pesquisar</a></li>
                </ul>
            </li>

             <li>
                <a href="/calendario">
                    <i class="fa fa-th"></i> <span>Calendario</span>
                    <span class="pull-right-container">
                    </span>
                </a>
            </li>
            
            <li>
                <a href="/perfil">
                    <i class="fa fa-th"></i> <span>Perfil</span>
                    <span class="pull-right-container">
                    </span>
                </a>
            </li>

        </ul>
    </section>
</aside>
<div class="content-wrapper">

    <%
        //}
%>