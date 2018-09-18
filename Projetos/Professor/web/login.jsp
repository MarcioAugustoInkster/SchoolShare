<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>SchoolShare Login</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="/css/form-login-ident.css">
        <script src="js/jquery/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script>
            window.onload = function () {
                $('#campoCredLogin').focus();
            };
        </script>

        <%
            String message = "", asteriscs = "", valida = "";

            valida = (String) request.getParameter("valida");

            if (valida != null) {
                if (valida.equals("false")) {
                    message += "<span id=\"errormessage\">";
                    message += "<b>Usuário</b> ou <b>Senha</b> está incorreto";
                    message += "</span>";

                    asteriscs = "<label style=\"color:#ff8080;\">&nbsp;*</label>";
                }
            } else {
                message = "";
                asteriscs = "";
            }
        %>
    </head>
    <body>
        <div class="global-login-wrapper">
            <div class="login-status">
                <form action="/validaLogin" method="POST" class="form-login" id="login-authenticate">
                    <div class="form-control-login">
                        <header class="wrapper-login-top">
                            <nav class="nav-login-logo">
                                <label>Bem vindo ao </label><b>School</b>&nbsp;Share
                            </nav>
                            <b>Portal do Aluno</b>
                        </header>

                        <div class="wrapper-login-center">
                            <%=message%>

                            <div class="center-components">
                                <label for="campoCredLogin">Usuário<%=asteriscs%></label>
                                <input type="text" class="form-control" id="campoCredLogin" name="fl-cred-login" >
                            </div>

                            <div class="center-components">
                                <label for="campoCredSenha">Senha<%=asteriscs%></label>
                                <input type="password" class="form-control" id="campoCredSenha" name="fl-cred-password">
                            </div>

                            <div class="center-components">
                                <div class="form-checkbox-control">
                                    <label><input type="checkbox">Lembrar minha Senha</label>
                                </div>
                                <button name="submitButtonLogin" id="goSubmitLogin">Conectar</button>
                            </div>

                            <div class="center-components">
                                <div class="form-checkbox-control">
                                    <a href="#">Esqueci minha senha</a>
                                </div>
                            </div>

                            <div class="login-footer">
                                <strong>Entrar como&nbsp;<a href="#">Professor</a></strong>
                                <strong>&nbsp;|&nbsp;Entrar como&nbsp;<a href="#">Administrador</a></strong>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <footer class="wrapper-login-footer">
            <div class="wrapper-version">
                <b>Versão</b> 1.7.6
            </div>
            <strong>2018 <a href="#">SchoolShare</a>.</strong>
            Nenhum direito reservado.
        </footer>
    </body>
</html>
