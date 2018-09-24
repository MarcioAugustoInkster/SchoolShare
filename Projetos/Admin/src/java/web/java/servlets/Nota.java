package web.java.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.classe.NotaBean;
import web.java.dao.NotaDAO;

/**
 *
 * @author Ricardo Borba
 */
@WebServlet(urlPatterns = "/nota")

public class Nota extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        NotaBean notaAluno = new NotaBean();
        notaAluno.setNome(req.getParameter("nome"));
        notaAluno.setNota1(Double.parseDouble(req.getParameter("nota1")));
        notaAluno.setNota2(Double.parseDouble(req.getParameter("nota2")));
        notaAluno.setNota3(Double.parseDouble(req.getParameter("nota3")));
        notaAluno.setNota4(Double.parseDouble(req.getParameter("nota4")));
        notaAluno.setFrequencia(Double.parseDouble(req.getParameter("frequencia")));
       
        
        int nota = new NotaDAO().adicionarNota(notaAluno);
        }  
    }

