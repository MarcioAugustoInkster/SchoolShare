package web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(urlPatterns = "/registroAluno")

public class ValidaAluno extends HttpServlet {
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
                ativo = request.getParameter("professorCheckAtivo");
            byte tipo = Byte.parseByte(request.getParameter("professorNivelAtivo"));
            
            String senha = GeraValor.geraSenhaEncriptado(
                request.getParameter("professorSenha")).toString(),
            repetirSenha = GeraValor.geraSenhaEncriptado(
                request.getParameter("professorSenhaRepetir")).toString();
            
            boolean defineAtivo = true;
            
            if (ativo == null || ativo.equals("on")) {
                defineAtivo = false;
            }
            
            out.print(nome + "\n");
            out.print(sobrenome + "\n");
            out.print(genero + "\n");
            out.print(anoNascimento + "\n");
            out.print(email + "\n");
            out.print(telefone + "\n");
            out.print(login + "\n");
            out.print(senha + "\n");
            out.print(repetirSenha + "\n");
            out.print(tipo + "\n");
            out.print(defineAtivo + "\n");
            
            pessoa.setNome(nome);
            pessoa.setSobrenome(sobrenome);
            pessoa.setSexo(genero.charAt(0));
            pessoa.setDataDeNascimento(anoNascimento);
            pessoa.setEmail(email);
            pessoa.setTelefone(telefone);
            pessoa.setLogin(login);
            pessoa.setTipo(tipo);
            pessoa.setAtivo(defineAtivo);
            
            if (senha.equals(repetirSenha)) {
                pessoa.setSenha(senha);

                if (PessoaDAO.inserePessoa(pessoa)) {
                    response.sendRedirect("//inf/success.jsp");
                }
            } else {
                out.print("<2>Cadastro falhou! Tente novamente ou contacte o Administrador</h2>");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
