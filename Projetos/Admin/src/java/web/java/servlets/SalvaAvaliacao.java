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
@WebServlet(urlPatterns = "/guardaAvaliacao")

public class SalvaAvaliacao extends HttpServlet {
    private PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        
        int desempenho = Integer.parseInt(request.getParameter("qDesempenho")),
            carregamento = Integer.parseInt(request.getParameter("qCarregamento")),
            visao = Integer.parseInt(request.getParameter("qVisao")),
            falha = Integer.parseInt(request.getParameter("qFalha")),
            problema = Integer.parseInt(request.getParameter("qProblema")),
            facilidade = Integer.parseInt(request.getParameter("qFacilidade")),
            conteudo = Integer.parseInt(request.getParameter("qConteudo")),
            organizacao = Integer.parseInt(request.getParameter("qOrganizacao"));
        String avaliacao = request.getParameter("campoAvaliacao");
        
        try {
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
    }
}
