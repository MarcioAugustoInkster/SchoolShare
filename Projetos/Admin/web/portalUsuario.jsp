<%-- 
    Document   : portalUsuario
    Created on : 29/09/2018, 23:18:51
    Author     : Marcio A. Schlosser
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
        <script src="js/jquery/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/jquery/jquery.disableAutoFill.min.js" type="text/javascript"></script>
        <script>
            window.onload = function () {
                $('#suporteUsuario').focus();
            };
        </script>
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
                            <b>Portal de Suporte</b>
                        </header>

                        <div class="wrapper-login-center">
                            <h3>Para alterar sua Senha, informe seu E-mail ou Usuário abaixo</h3>
                            
                            <div class="center-components">
                                <label for="suporteUsuario">Usuário ou E-mail</label>
                                <input type="text" class="form-control" id="suporteUsuario" name="suporteUsuario">
                            </div>

                            <div class="center-components">
                                <label for="suporteNovaSenha">Nova Senha (Mínimo 6 dígitos)</label>
                                <input type="password" class="form-control" id="suporteNovaSenha" name="suporteNovaSenha">
                            </div>
                            
                            <div class="center-components">
                                <label for="suporteConfirmaSenha">Confirme a Senha</label>
                                <input type="password" class="form-control" id="suporteConfirmaSenha" name="suporteConfirmaSenha">
                            </div>

                            <div class="center-components">
                                <button name="goSubmitAction" id="goSubmitAction">Confirmar</button>
                            </div>

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

            <b>2018 SchoolShare.</b>&nbsp;<strong>Conheça nosso <a href="#popup-login-msg">Github</a></strong>
        </footer>
    </body>
</html>
