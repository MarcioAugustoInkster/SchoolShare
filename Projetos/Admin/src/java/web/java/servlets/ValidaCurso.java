package web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.classe.CursoBean;
import web.java.dao.CursoDAO;

/**
 *
 * @author Marcio Augusto Schlosser
 */
@WebServlet(urlPatterns = "/registroCurso")

public class ValidaCurso extends HttpServlet {
    private static PrintWriter out;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        try {
            CursoBean curso = new CursoBean();

            response.setContentType("text/html;charset=UTF-8");
            
            int idInstituicao = Integer.parseInt(request.getParameter("selectCursoInstituicao"));
            String nomeCurso = request.getParameter("campoCursoNome");
            
            curso.setIdInstituicao(idInstituicao);
            curso.setNome(nomeCurso);
            
            if (CursoDAO.insereCurso(curso)) {
                response.sendRedirect("/inf/success.jsp");
            } else {
                out.print("<h2 style=\"color:8b0000;\">Cadastro falhou! Tente novamente ou contacte o Administrador</h2>");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}