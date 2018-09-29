package web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
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
            
            String inst = request.getParameter("formInstitutionName"), 
                endereco = request.getParameter("formInstitutionAddress"), 
                numero = request.getParameter("formInstitutionNumber"), 
                cep = request.getParameter("formInstitutioncep"),
                bairro = request.getParameter("formInstitutionDistrict"), 
                cidade = request.getParameter("formInstitutionCity"),
                estado = request.getParameter("formInstitutionState");
            
            byte[] convInstituicao = inst.getBytes(StandardCharsets.ISO_8859_1);
            inst = new String(convInstituicao, StandardCharsets.UTF_8);
            
            byte[] convEndereco = endereco.getBytes(StandardCharsets.ISO_8859_1);
            endereco = new String(convEndereco, StandardCharsets.UTF_8);
            
            byte[] convBairro = bairro.getBytes(StandardCharsets.ISO_8859_1);
            bairro = new String(convBairro, StandardCharsets.UTF_8);
            
            byte[] convCidade = cidade.getBytes(StandardCharsets.ISO_8859_1);
            cidade = new String(convCidade, StandardCharsets.UTF_8);

            instituicao.setInstituicao(inst);
            instituicao.setEndereco(endereco);
            instituicao.setNumero(numero);
            instituicao.setCep(cep);
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
