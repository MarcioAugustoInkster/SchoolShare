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
import web.java.directory.DirFolderAccess;

/**
 *
 * @author Marcio Augusto Schlosser
 */
@WebServlet(urlPatterns = "/repositorioTurma")

public class CriaRepoTurma extends HttpServlet {
    private PrintWriter out;
    private static String repoMaster;
    private static String repoCurso;
    private static String repoCursoDescricao;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        out = response.getWriter();

        if (validaRepositorioTurma(request, response)) {
            if (criaRepositorioTurma(request, response)) {
                response.sendRedirect("/inf/diretorioSucesso.jsp");
            } else {
                response.sendRedirect("/inf/diretorioExiste.jsp");
            }
        } else {
            out.println("<br/><b style='color:red;'>Falha ao criar repositório!</b>");
        }
    }
    
    protected boolean validaRepositorioTurma(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        out = response.getWriter();

        try {
            repoMaster = request.getParameter("selectFolderEntidades");
            byte[] convRepoMaster = repoMaster.getBytes(StandardCharsets.ISO_8859_1);
            repoMaster = new String(convRepoMaster, StandardCharsets.UTF_8);
            
            repoCurso = request.getParameter("selectFolderCursos");
            byte[] convRepoCurso = repoCurso.getBytes(StandardCharsets.ISO_8859_1);
            repoCurso = new String(convRepoCurso, StandardCharsets.UTF_8);
            
            repoCursoDescricao = request.getParameter("turmaDescricao");
            byte[] convRepoDesc = repoCursoDescricao.getBytes(StandardCharsets.ISO_8859_1);
            repoCursoDescricao = new String(convRepoDesc, StandardCharsets.UTF_8);
            
            String[] repositorios = new String[]{repoCurso, repoCursoDescricao, repoMaster};

            for (int i = 0; i < repositorios.length; i++) {
                if (repositorios[i] != null) {
                    return true;
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    protected boolean criaRepositorioTurma(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        out = response.getWriter();
        
        DirFolderAccess dfa = new DirFolderAccess();
        
        File rootRepo = new File(dfa.uploadFullPath(request) 
            + File.separator + repoMaster + File.separator
            + repoCurso + File.separator + repoCursoDescricao);
        
        if (!rootRepo.exists() && !rootRepo.isDirectory()) {
            rootRepo.mkdir();
            
            return true;
        }
        return false;
    }
}
