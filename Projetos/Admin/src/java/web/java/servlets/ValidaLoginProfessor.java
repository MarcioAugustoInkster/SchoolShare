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

/**
 *
 * @author Marcio Augusto Schlosser
 */
@WebServlet(urlPatterns = "/validaLoginProfessor")

public class ValidaLoginProfessor extends HttpServlet {

    private PrintWriter out;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        
        String login = request.getParameter("fl-professor-login");
        String senha = request.getParameter("fl-professor-password");
        
        try {
            if (login.equals("") || senha.equals("")) {
                response.sendRedirect("/professorLogin.jsp?valida=null");
            } else 
            if (Banco.conecta() != null) {
                StringBuilder encriptaSenha = new StringBuilder(GeraValor.geraSenhaEncriptado(senha));
                
                if (Banco.authenticaLoginProfessor(login, encriptaSenha)) {
                    if (SessaoAdmin.criaSessao(request, login)) {
                        response.sendRedirect("/professor/professor.jsp");
                    }
                } else {
                    response.sendRedirect("/professorLogin.jsp?valida=false");
                }
            }
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
        }

    }
}
