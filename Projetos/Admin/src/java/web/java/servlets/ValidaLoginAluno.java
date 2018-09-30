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
 * @author
 */
@WebServlet(urlPatterns = "/validaLoginAluno")

public class ValidaLoginAluno extends HttpServlet {

    private PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        
        String login = request.getParameter("fl-aluno-login");
        String senha = request.getParameter("fl-aluno-password");
        
        try {
            if (login.equals("") || senha.equals("")) {
                response.sendRedirect("/alunoLogin.jsp?valida=null");
            } else 
            if (Banco.conecta() != null) {
                StringBuilder encriptaSenha = new StringBuilder(GeraValor.geraSenhaEncriptado(senha));
                
                if (Banco.authenticaLoginAluno(login, encriptaSenha)) {
                    if (SessaoAdmin.criaSessao(request, login)) {
                        response.sendRedirect("/aluno/aluno.jsp");
                    }
                } else {
                    response.sendRedirect("/alunoLogin.jsp?valida=false");
                }
            }
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
        }

    }
}
