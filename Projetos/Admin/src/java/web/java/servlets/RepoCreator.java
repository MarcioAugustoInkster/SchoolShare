package web.java.servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
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
@WebServlet(urlPatterns = "/repocheck")

public class RepoCreator extends HttpServlet {
    private static PrintWriter out;
    private String UPLOAD_DIRECTORY;
    private final String instDir = "MKInst0";
    private final String req = "req";

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
        
        if (parameterName.equals(req)) {
            int id = Integer.parseInt(request.getParameter(req));
            
            File file = new File(UPLOAD_DIRECTORY + instDir + id);

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
