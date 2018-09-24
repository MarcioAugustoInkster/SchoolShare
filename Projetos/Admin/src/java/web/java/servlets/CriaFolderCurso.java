package web.java.servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.classe.CursoBean;
import web.java.dao.CursoDAO;
import web.java.directory.DirFolderAccess;

/**
 *
    Document   : CriaFolderCurso
    Created on : 19/09/2018, 11:13:24
    Author     : Marcio Augusto Schlosser
 */
@WebServlet(urlPatterns = "/folderCurso")

public class CriaFolderCurso extends HttpServlet {
    private static PrintWriter out;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        
        DirFolderAccess dfa = new DirFolderAccess();
        
        String repo = request.getParameter("repo");
        int cursoId = Integer.parseInt(request.getParameter("curso"));
        
        File rootRepo = new File(dfa.uploadFullPath(request));
        File rootRepoSubfolder = new File(dfa.findDir(rootRepo, repo));
        
        if (rootRepoSubfolder.exists() && rootRepoSubfolder.isDirectory()) {
            CursoBean cursoNome = new CursoDAO().pegaCursoId(cursoId);
            
            String repoNewPath = rootRepoSubfolder + File.separator + cursoNome.getCurso();
            
            rootRepoSubfolder = new File(repoNewPath);
            
            if (rootRepoSubfolder.exists() && rootRepoSubfolder.isDirectory()) {
                response.sendRedirect("/inf/diretorioExiste.jsp");
                return;
            } else {
                rootRepoSubfolder.mkdir();
                response.sendRedirect("/inf/diretorioSucesso.jsp");
                return;
            }
        } else {
            out.print("Diretório \"" + rootRepo + "\" não encontrado");
        }
    }
}
