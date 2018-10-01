package web.java.servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.classe.InstituicaoBean;
import web.java.dao.InstituicaoDAO;
import web.java.directory.DirFolderAccess;

/**
 *
 * @author Marcio Augusto Schlosser
 */
@WebServlet(urlPatterns = "/repoinstituicao")

public class CriaInstituicao extends HttpServlet {
    private static PrintWriter out;
    private String UPLOAD_DIRECTORY;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        DirFolderAccess dfa = new DirFolderAccess();
        
        UPLOAD_DIRECTORY = dfa.uploadFullPath(request);
        String parameterName = "";
        Enumeration enumeration = request.getParameterNames();
        
        while (enumeration.hasMoreElements()) {
            parameterName = (String) enumeration.nextElement();
        }
        
        InstituicaoDAO instituicao = new InstituicaoDAO();
        
        if (parameterName.equals("id")) {
            int id = Integer.parseInt(request.getParameter("id"));
            
            List<InstituicaoBean> nome = instituicao.listaInstituicaoPorId(id);
            String listaNome = "";
            
            for (InstituicaoBean lista : nome) {
                listaNome = lista.getInstituicao();
            }
            
            File file = new File(UPLOAD_DIRECTORY + "_" + listaNome);

            if (file.exists() && file.isDirectory()) {
                response.sendRedirect("/inf/diretorioExiste.jsp");
                return;
            } else {
                file.mkdir();

                response.sendRedirect("/inf/diretorioSucesso.jsp");
                return;
            }
        }
    }
}
