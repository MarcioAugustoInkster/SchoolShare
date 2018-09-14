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

/**
 *
 * @author Freakazed-PC
 */
@WebServlet(urlPatterns = "/inserePessoa")

public class PessoaInsert extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        
        PessoaBean pessoa = new PessoaBean();
        
        pessoa.setNome(request.getParameter("nome"));
        pessoa.setEmail(request.getParameter("email"));
        
        PessoaDAO pessoaDao = new PessoaDAO();
        pessoaDao.salvarPessoa(pessoa);
        
        PrintWriter out = response.getWriter();
        out.println("Pessoa inserido OK");
    }
}