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
@WebServlet(urlPatterns = "/alteraInstituicao")
public class AlteraInstituicao extends HttpServlet {
    private PrintWriter out;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        
        InstituicaoBean instituicao = new InstituicaoBean();
        
        instituicao.setId(Integer.parseInt(request.getParameter("formInstitutionId")));
        instituicao.setInstituicao(request.getParameter("formInstitutionName"));
        instituicao.setEndereco(request.getParameter("formInstitutionAddress"));
        instituicao.setNumero(request.getParameter("formInstitutionNumber"));
        instituicao.setCep(request.getParameter("formInstitutioncep"));
        instituicao.setBairro(request.getParameter("formInstitutionDistrict"));
        instituicao.setCidade(request.getParameter("formInstitutionCity"));
        instituicao.setEstado(request.getParameter("formInstitutionState"));

        boolean alterado = new InstituicaoDAO().alteraInstituicao(instituicao);
        
        if (alterado) {
            response.sendRedirect("/admin/listaInstituicao.jsp");
        } else {
            out.print("Não alterado");
        }
    }
}
