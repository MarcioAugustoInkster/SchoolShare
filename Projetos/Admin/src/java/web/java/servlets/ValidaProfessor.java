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
import web.java.dao.ProfessorDAO;
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
            DataFormatter df = new DataFormatter();
            
            String nome = request.getParameter("professorNome"), 
                anoNascimento = df.dataParaEN(request.getParameter("professorAnoNascimento")),
                email = request.getParameter("professorEmail"), 
                telefone = request.getParameter("professorTelefone"), 
                login = request.getParameter("professorLogin"), 
                senha = request.getParameter("professorSenha");
            
            byte genero = Byte.parseByte(request.getParameter("professorGenero"));
            
            byte[] convNome = nome.getBytes(StandardCharsets.ISO_8859_1);
            nome = new String(convNome, StandardCharsets.UTF_8);
            
            byte[] convLogin = login.getBytes(StandardCharsets.ISO_8859_1);
            login = new String(convLogin, StandardCharsets.UTF_8);
            
            byte[] convSenha = senha.getBytes(StandardCharsets.ISO_8859_1);
            senha = new String(convSenha, StandardCharsets.UTF_8);
            
            String pegaSenha = GeraValor.geraSenhaEncriptado(senha).toString(),
            repetirSenha = GeraValor.geraSenhaEncriptado(
                request.getParameter("professorSenhaRepetir")).toString();
            
            if (pegaSenha.equals(repetirSenha)) {
                pessoa.setNomeCompleto(nome);
                pessoa.setGenero(genero);
                pessoa.setDataDeNascimento(anoNascimento);
                pessoa.setEmail(email);
                pessoa.setTelefone(telefone);
                pessoa.setLogin(login);
                pessoa.setSenha(pegaSenha);
                pessoa.setAtivo(true);
                pessoa.setAcesso(2);
                
                int ultimoId = PessoaDAO.inserePessoa(pessoa);
                
                if (ultimoId != 0) {
                    if (ProfessorDAO.insereProfessor(ultimoId)) {
                        response.sendRedirect("/inf/success.jsp");
                    }
                }
            } else {
                out.print("<2>Cadastro falhou! Tente novamente ou contacte o Administrador</h2>");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
