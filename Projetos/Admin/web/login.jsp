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
            String message = "";
            String valida = (String) request.getParameter("valida");

            if (valida != null) {
                if (valida.equals("false")) {
                    message += "<span id=\"errormessage\">";
                    message += "<b>Login</b> ou <b>Senha</b> incorreto";
                    message += "</span>";
                }
            } else {
                message = "";
            }
        %>
    </head>
    <body>
        <form action="/validaLogin" method="POST" class="form-login" id="login-authenticate">
            <div class="form-control-login">
                <section class="wrapper-title-form">
                    <b>Portal de Acesso</b>
                </section>

                <header class="wrapper-login-top">
                    <nav class="nav-login-logo">
                        <b>School</b>&nbsp;Share
                    </nav>
                </header>

                <div class="wrapper-login-center">
                    <%=message%>

                    <div class="center-components">
                        <label for="campoCredLogin">Usuário</label>
                        <input type="text" class="form-control" id="campoCredLogin" name="fl-cred-login" 
                            value="admin">
                    </div>

                    <div class="center-components">
                        <label for="campoCredSenha">Senha</label>
                        <input type="password" class="form-control" id="campoCredSenha" name="fl-cred-password" 
                            value="admin">
                    </div>

                    <div class="center-components">
                        <div class="form-checkbox-control">
                            <label><input type="checkbox">Lembrar Senha</label>
                        </div>
                        <button name="submitButtonLogin" id="goSubmitLogin">Login</button>
                    </div>

                    <div class="center-components">
                        <div class="form-checkbox-control">
                            <a href="#">Esqueceu a senha?</a>
                        </div>
                    </div>
                </div>

                <footer class="wrapper-login-footer">
                    <div class="wrapper-version">
                        <b>Versão</b> 1.7.6
                    </div>
                    <strong>2018 <a href="#">SchoolShare</a>.</strong>
                    Nenhum direito reservado.
                </footer>
            </div>
        </form>
    </body>
</html>
