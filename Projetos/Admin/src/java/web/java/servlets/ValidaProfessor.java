package web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.classe.PessoaBean;
import web.java.dao.PessoaDAO;
import web.java.mapping.DataFormatter;
import web.java.mapping.GeraValor;

/**
 *
 * @author Marcio Augusto Schlosser
 */
@WebServlet(urlPatterns = "/registroProfessor")

public class ValidaProfessor extends HttpServlet {
    private static PrintWriter out;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
       response.setContentType("text/html;charset=UTF-8"); 
        
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        
        try {
            PessoaBean pessoa = new PessoaBean();

            String nome = request.getParameter("professorNome"), 
                sobrenome = request.getParameter("professorSobrenome"), 
                genero = request.getParameter("professorGenero"), 
                anoNascimento = DataFormatter.converteStringToDate(
                    request.getParameter("professorAnoNascimento")),
                email = request.getParameter("professorEmail"), 
                telefone = request.getParameter("professorTelefone"), 
                login = request.getParameter("professorLogin"), 
                senha = request.getParameter("professorSenha"),
                ativo = request.getParameter("professorCheckAtivo");
            
            byte[] convNome = nome.getBytes(StandardCharsets.ISO_8859_1);
            nome = new String(convNome, StandardCharsets.UTF_8);
            
            byte[] convSobrenome = sobrenome.getBytes(StandardCharsets.ISO_8859_1);
            sobrenome = new String(convSobrenome, StandardCharsets.UTF_8);
            
            byte[] convLogin = login.getBytes(StandardCharsets.ISO_8859_1);
            login = new String(convLogin, StandardCharsets.UTF_8);
            
            byte[] convSenha = senha.getBytes(StandardCharsets.ISO_8859_1);
            senha = new String(convSenha, StandardCharsets.UTF_8);
            
            String pegaSenha = GeraValor.geraSenhaEncriptado(senha).toString(),
            repetirSenha = GeraValor.geraSenhaEncriptado(
                request.getParameter("professorSenhaRepetir")).toString();
            
            boolean defineAtivo = true;
            
            if (ativo == null) {
                defineAtivo = false;
            }
            
            pessoa.setNome(nome);
            pessoa.setSobrenome(sobrenome);
            pessoa.setSexo(genero.charAt(0));
            pessoa.setDataDeNascimento(anoNascimento);
            pessoa.setEmail(email);
            pessoa.setTelefone(telefone);
            pessoa.setLogin(login);
            pessoa.setTipo(2);
            pessoa.setAtivo(defineAtivo);
            
            if (pegaSenha.equals(repetirSenha)) {
                pessoa.setSenha(pegaSenha);

                if (PessoaDAO.inserePessoa(pessoa)) {
                    //response.sendRedirect("/inf/success.jsp");
                }
            } else {
                out.print("<2>Cadastro falhou! Tente novamente ou contacte o Administrador</h2>");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
