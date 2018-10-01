package web.java.servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
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
@WebServlet(urlPatterns = "/criarRepoCurso")

public class CriaFolderCurso extends HttpServlet {
    private static PrintWriter out;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        
        String instituicao = request.getParameter("folderInstList");
        String curso = request.getParameter("folderCursoList");
        
        byte[] convInstituicao = instituicao.getBytes(StandardCharsets.ISO_8859_1);
        instituicao = new String(convInstituicao, StandardCharsets.UTF_8);
        
        byte[] convCurso = curso.getBytes(StandardCharsets.ISO_8859_1);
        curso = new String(convCurso, StandardCharsets.UTF_8);
        
        DirFolderAccess dfa = new DirFolderAccess();
        
        File rootRepo = new File(dfa.uploadFullPath(request));
        File rootRepoSubfolder = new File(dfa.findDir(rootRepo, instituicao));
        
        if (rootRepoSubfolder.exists() && rootRepoSubfolder.isDirectory()) {
            
            String repoNewPath = rootRepoSubfolder + File.separator + curso;
            
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
