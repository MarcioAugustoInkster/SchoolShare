package web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.mapping.DataFormatter;
import web.java.classe.PessoaBean;
import web.java.dao.PessoaDAO;

/**
 *
 * @author Marcio
 */
@WebServlet(urlPatterns = "/CadastroAluno")

public class Aluno extends HttpServlet {
    private static PrintWriter out;
    private static PessoaBean pessoa;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        response.sendRedirect("./admin/cadastroAluno.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        out = response.getWriter();
        
        pessoa = new PessoaBean();
        String alunoSenha = null;
        
        try {
            String alunoNome = request.getParameter("alunoNome");
            String alunoEmail = request.getParameter("alunoEmail");
            char alunoSexo = DataFormatter.converteStringToChar(request.getParameter("alunoSexo"));

            String alunoNascimento = DataFormatter.converteStringToDate(request.getParameter("alunoNascimento"));
            
            String alunoLogin = request.getParameter("alunoUsuario");
            String alunoSenhaNova = geraSenhaEncriptado(
                request.getParameter("alunoSenha")).toString();
            String alunoSenhaRepete = geraSenhaEncriptado(
                request.getParameter("alunoRepeteSenha")).toString();
            byte alunoNivel = DataFormatter.converteStringToByte(request.getParameter("alunoNivel"));
            boolean alunoAtivo = DataFormatter.converteStringToBoolean(request.getParameter("alunoAtivo"));
            
            if (alunoSenhaNova.equals(alunoSenhaRepete)) {
                alunoSenha = alunoSenhaNova;

                pessoa.setNome(alunoNome);
                pessoa.setEmail(alunoEmail);
                pessoa.setSexo(alunoSexo);
                pessoa.setDataNascimento(alunoNascimento);
                pessoa.setLogin(alunoLogin);
                pessoa.setSenha(alunoSenha);
                pessoa.setNivel(alunoNivel);
                pessoa.setAtivo(alunoAtivo);
                
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
