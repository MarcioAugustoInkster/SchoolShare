/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.classe.TurmaBean;
import web.java.dao.TurmaDAO;

/**
 *
 * @author Ricardo
 */

    @WebServlet(urlPatterns = "/registroChamada")

public class ValidaChamada extends HttpServlet {
    private static PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        
        try {
            TurmaBean turma = new TurmaBean();

            int nomeAluno = Integer.parseInt(request.getParameter("nome"));
            String nomeTurma = request.getParameter("turmaNome"),
                data = request.getParameter("data");
            short chamadaAluno = Short.parseShort(request.getParameter("chamada"));
            
            turma.setProfessorId(nomeAluno);
            turma.setTurma(nomeTurma);
            turma.setData(data);
            turma.setCargaHoraria(chamadaAluno);
            
            if (TurmaDAO.insereTurma(turma)) {
               response.sendRedirect("/inf/success.jsp");
            } else {
                out.print("<h2 style=\"color:8b0000;\">Cadastro falhou! Tente novamente ou contacte o Administrador</h2>");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
             }
        }
    }
