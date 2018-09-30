<%-- 
    Document   : recuperacaoSenha
    Created on : 30/09/2018, 03:13:05
    Author     : Freakazed-PC
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>SchoolShare Login</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="/css/form-login-ident.css">
        <link rel="stylesheet" href="/css/general-contents.css">
    </head>
    <body>
        <div class="global-login-wrapper">
            <div class="login-status">
                <form action="/portalUsuario" method="POST" class="form-login" id="supportAdmin">
                    <div class="form-control-support">
                        <header class="wrapper-login-top">
                            <nav class="nav-login-logo">
                                <b>School</b>&nbsp;Share
                            </nav>
                            <b>Recuperação de Senha</b>
                        </header>

                        <div class="wrapper-login-center">
                            <h2>Falha na solicitação de requisição</h2>
                            <h4>1. Usuário, E-mail ou Senha informado não são válidos</h4>
                            <h4>2. Pode ter ocorrido um erro na requisição</h4>
                            <h4>3. Relate ao Administrador do Sistema o ocorrido</h4>
                            
                            <div class="login-footer">
                                <strong>Retornar para&nbsp;<a href="/login.jsp">Login</a></strong>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <footer class="wrapper-suporte-footer">
            <div class="wrapper-version">
                <b>Versão</b> 1.0.0
            </div>

            <b>2018 Equipe</b>&nbsp;<strong><a href="#">SchoolShare</a>.</strong>
        </footer>
    </body>
</html>
