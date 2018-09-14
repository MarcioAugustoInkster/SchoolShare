apackage web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.classe.PessoaBean;
import web.java.dao.PessoaDAO;
import web.java.mapping.DataFormatter;

/**
 *
 * @author Marcio
 */
@WebServlet(urlPatterns = {"/CadastroProfessor"})

public class Professor extends HttpServlet {
    private static PrintWriter out;
    private static PessoaBean pessoa;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        response.sendRedirect("./admin/cadastroProfessor.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        out = response.getWriter();
        
        pessoa = new PessoaBean();
        String profSenha = null;
        
        try {
            String profNome = request.getParameter("professorNome");
            String profEmail = request.getParameter("professorEmail");
            char profSexo = DataFormatter.converteStringToChar(request.getParameter("professorSexo"));

            String profNascimento = DataFormatter.converteStringToDate(request.getParameter("professorNascimento"));
            
            String profLogin = request.getParameter("professorUsuario");
            String profSenhaNova = geraSenhaEncriptado(
                request.getParameter("professorSenha")).toString();
            String profSenhaRepete = geraSenhaEncriptado(
                request.getParameter("professorRepeteSenha")).toString();
            byte profNivel = DataFormatter.converteStringToByte(request.getParameter("professorNivel"));
            boolean profAtivo = DataFormatter.converteStringToBoolean(request.getParameter("professorAtivo"));
            
            if (profSenhaNova.equals(profSenhaRepete)) {
                profSenha = profSenhaNova;

                pessoa.setNome(profNome);
                pessoa.setEmail(profEmail);
                pessoa.setSexo(profSexo);
                pessoa.setDataNascimento(profNascimento);
                pessoa.setLogin(profLogin);
                pessoa.setSenha(profSenha);
                pessoa.setNivel(profNivel);
                pessoa.setAtivo(profAtivo);
                
                int idProfessor = new PessoaDAO().inserePessoa(pessoa);
                
                if (idProfessor > 0) {
                    response.sendRedirect("./index.jsp");
                }
            } else {
                out.print("Erro no Cadastro!");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    private static StringBuilder geraSenhaEncriptado(String senha) {
        StringBuilder sb = new StringBuilder();
        
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-512");
            byte[] pswd = md.digest(senha.getBytes(StandardCharsets.UTF_8));
            
            if (pswd != null) {
                for (int i = 0; i < pswd.length; i++) {
                    sb.append(Integer.toString((pswd[i] & 0xff) + 0x100, 16).substring(1)
                        .toUpperCase()).toString();
                }
                return sb;
            }
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
        }
        return null;
    }
}
