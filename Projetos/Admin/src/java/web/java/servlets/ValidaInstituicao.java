package web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.classe.InstituicaoBean;
import web.java.dao.InstituicaoDAO;

/**
 *
 * @author Marcio Augusto Schlosser
 */
@WebServlet(urlPatterns = "/registroInstituicao")

public class ValidaInstituicao extends HttpServlet {
    private static PrintWriter out;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        out = response.getWriter();
        
        try {
            InstituicaoBean instituicao = new InstituicaoBean();

            response.setContentType("text/html;charset=UTF-8");
            
            String nome = request.getParameter("formInstitutionName"), 
                endereco = request.getParameter("formInstitutionAddress"), 
                numero = request.getParameter("formInstitutionNumber"), 
                bairro = request.getParameter("formInstitutionDistrict"), 
                cidade = request.getParameter("formInstitutionCity"),
                estado = request.getParameter("formInstitutionState");

            instituicao.setInstituicao(nome);
            instituicao.setEndereco(endereco);
            instituicao.setNumero(numero);
            instituicao.setBairro(bairro);
            instituicao.setCidade(cidade);
            instituicao.setEstado(estado);

            if (InstituicaoDAO.insereInstituicao(instituicao)) {
                response.sendRedirect("/inf/success.jsp");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        
    }
}
