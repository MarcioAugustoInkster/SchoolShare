package web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(urlPatterns = "/instituicaoview")
public class InstituicaoView extends HttpServlet {
    private PrintWriter out;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        
        DirFolderAccess dfa = new DirFolderAccess();
        String fullpath = dfa.uploadFullPath(request);
        
        String instituicao = request.getParameter("folderInstList");
        
        String caminho = fullpath + instituicao;
        FolderDirectory.caminhoAtual = caminho;
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/repositorioCurso.jsp");
        dispatcher.forward(request, response);
    }
}
