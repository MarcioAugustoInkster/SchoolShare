package web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.admin.SessaoAdmin;
import web.java.conexao.Banco;
import web.java.mapping.GeraValor;

@WebServlet(urlPatterns = "/registroLogin")

public class ValidaLogin extends HttpServlet {

    private static PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        out = response.getWriter();
        
        String login = request.getParameter("fl-cred-login");
        String senha = request.getParameter("fl-cred-password");
        
        StringBuilder encriptaSenha = new StringBuilder(GeraValor.geraSenhaEncriptado(senha));
        
        try {
            if (Banco.conecta() != null) {
                if (Banco.authenticaLogin(login, encriptaSenha)) {
                    if (SessaoAdmin.criaSessao(request, login)) {
                        response.sendRedirect("/index.jsp");
                    }
                } else {
                    response.sendRedirect("/login.jsp?valida=false");
                }
            }
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        try {
            if (request.getSession().getAttribute("admin_session") != null ||
                request.getSession().getAttribute("admin_session") != "") {
                
                request.getSession().invalidate();
                
                response.sendRedirect("/login.jsp");
                return;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
