package web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.directory.DirFolderAccess;
import web.java.directory.FolderDirectory;

/**
 *
 * @author Freakazed-PC
 */
@WebServlet(urlPatterns = "/cursoview")

public class CursoView extends HttpServlet {
    private PrintWriter out;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        
        String curso = request.getParameter("listaCursoParaRepositorio");
        
        byte[] convCurso = curso.getBytes(StandardCharsets.ISO_8859_1);
        curso = new String(convCurso, StandardCharsets.UTF_8);
        
        DirFolderAccess dfa = new DirFolderAccess();
        String caminhocurso = dfa.caminhoCursos(request, curso);
        
        out.print(caminhocurso);
        
        out.print(FolderDirectory.caminhoAtual);
        //FolderDirectory.caminhoInstituicao = "/" + curso;
        //out.print(FolderDirectory.caminhoInstituicao);
        //RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/repositorioCurso.jsp");
        //dispatcher.forward(request, response);
    }
}
