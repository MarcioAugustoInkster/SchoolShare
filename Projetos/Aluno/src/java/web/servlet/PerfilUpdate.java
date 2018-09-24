/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.bean.AlunoBean;
import web.dao.AlunoDAO;

/**
 *
 * @author Daiana
 */
@WebServlet (urlPatterns = "/update")
public class PerfilUpdate extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        AlunoBean aluno = new AlunoBean();
        aluno.setCep(req.getParameter("Cep"));
        aluno.setRua(req.getParameter("Rua"));
        aluno.setComplemento(req.getParameter("Complemento"));
        aluno.setBairro(req.getParameter("Bairro"));
        aluno.setCidade(req.getParameter("Cidade"));
        aluno.setEstado(req.getParameter("Estado"));
        aluno.setEmail(req.getParameter("E-mail"));
        aluno.setTelefone(req.getParameter("Telefone"));
        aluno.setCelular(req.getParameter("Celular"));
        boolean alterou = new AlunoDAO().alterar(aluno);
    }
    
    
}
