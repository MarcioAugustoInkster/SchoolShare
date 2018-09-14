package web.java.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.admin.SessaoAdmin;

/**
 *
 * @author Marcio Augusto Schlosser
 */
@WebServlet("/home")

public class Index extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        if (SessaoAdmin.verificaSessao(request, response)) {
            request.getRequestDispatcher("/index.jsp").include(request, response);
        }
    }
}
