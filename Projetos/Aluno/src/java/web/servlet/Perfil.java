
package web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet (urlPatterns = "/perfil")
public class Perfil extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
         resp.setContentType("text/html;charset=UTF-8");
     req.getRequestDispatcher("/usuario/aluno/perfilAluno.jsp").include(req, resp);

    } 
    
    
}
    

