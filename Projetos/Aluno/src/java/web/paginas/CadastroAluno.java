/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.paginas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Daiana
 */
@WebServlet(urlPatterns = "/cadastro")
public class CadastroAluno extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
     req.getRequestDispatcher("/usuario/aluno/cadastroAluno.jsp").include(req, resp);  

    }
}
