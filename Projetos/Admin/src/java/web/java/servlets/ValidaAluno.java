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
import web.java.dao.AlunoDAO;
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        
        DataFormatter df = new DataFormatter();
        
        try {
            PessoaBean pessoa = new PessoaBean();

            String nome = request.getParameter("alunoNome"),
                anoNascimento = request.getParameter("alunoAnoNascimento"),
                email = request.getParameter("alunoEmail"),
                telefone = request.getParameter("alunoTelefone"),
                login = request.getParameter("alunoLogin"),
                senha = request.getParameter("alunoSenha"),
                repeteSenha = request.getParameter("alunoSenhaRepetir");
            
            byte[] convNome = nome.getBytes(StandardCharsets.ISO_8859_1);
            nome = new String(convNome, StandardCharsets.UTF_8);
            
            byte[] convEmail = email.getBytes(StandardCharsets.ISO_8859_1);
            email = new String(convEmail, StandardCharsets.UTF_8);
            
            byte[] convLogin = login.getBytes(StandardCharsets.ISO_8859_1);
            login = new String(convLogin, StandardCharsets.UTF_8);
            
            byte[] convSenha = senha.getBytes(StandardCharsets.ISO_8859_1);
            senha = new String(convSenha, StandardCharsets.UTF_8);
            
            String guardaSenha = GeraValor.geraSenhaEncriptado(senha).toString();
            
            byte[] convRepeteSenha = repeteSenha.getBytes(StandardCharsets.ISO_8859_1);
            repeteSenha = new String(convRepeteSenha, StandardCharsets.UTF_8);
            
            byte genero = Byte.parseByte(request.getParameter("alunoGenero"));
            
            String dataAluno = df.dataParaEN(anoNascimento);
            
            if (senha.equals(repeteSenha)) {
                pessoa.setNomeCompleto(nome);
                pessoa.setGenero(genero);
                pessoa.setDataDeNascimento(dataAluno);
                pessoa.setEmail(email);
                pessoa.setTelefone(telefone);
                pessoa.setLogin(login);
                pessoa.setSenha(guardaSenha);
                pessoa.setAtivo(true);
                pessoa.setAcesso(3);

                int ultimoId = PessoaDAO.inserePessoa(pessoa);
                
                if (ultimoId != 0) {
                    if (AlunoDAO.insereAluno(ultimoId)) {
                        response.sendRedirect("/inf/success.jsp");
                    }
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
