package web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.classe.PessoaBean;
import web.java.dao.PessoaDAO;

/**
 *
 * @author Freakazed-PC
 */
@WebServlet(urlPatterns = "/portalUsuario")

public class PortalUsuario extends HttpServlet {
    private PrintWriter out;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/portalUsuario.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        
        PessoaBean pessoa = new PessoaBean();
        
        String usuario = request.getParameter("suporteUsuario");
        String senha = request.getParameter("suporteNovaSenha");
        String confirma = request.getParameter("suporteConfirmaSenha");
        
        if (senha.length() >= 6 && confirma.length() >= 6) {
            if (senha.equals(confirma)) {
                if (usuario.contains("@") && usuario.contains(".com")) {
                    pessoa.setEmail(usuario);
                }
                pessoa.setLogin(usuario);
                pessoa.setSenha(senha);
                
                PessoaDAO dao = new PessoaDAO();
                
                if (dao.alteraSenhaUsuario(pessoa)) {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/recuperacaoSucesso.jsp");
                    dispatcher.forward(request, response);
                }
            }
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/recuperacaoSenha.jsp");
        dispatcher.forward(request, response);
    }
}
