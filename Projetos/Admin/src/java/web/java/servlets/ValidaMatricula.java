package web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marcio Augusto Schlosser
 */
@WebServlet(urlPatterns = "/registraMatricula")

public class ValidaMatricula extends HttpServlet {
    private PrintWriter out;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        
        int id = Integer.parseInt(request.getParameter("id"));
        String turma = request.getParameter("matriculaTurma");
        
        retornaMatriculaLista(turma);
        
    }
    
    protected String retornaMatriculaLista(String lista) {
        return lista;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        
        out.print("POPP");
    }
}
