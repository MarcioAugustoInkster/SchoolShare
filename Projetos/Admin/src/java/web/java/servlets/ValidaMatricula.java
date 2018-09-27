package web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.classe.MatriculaBean;
import web.java.dao.MatriculaDAO;

/**
 *
 * @author Marcio Augusto Schlosser
 */
@WebServlet(urlPatterns = "/registraMatricula")

public class ValidaMatricula extends HttpServlet {
    private PrintWriter out;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        
        int idAluno = Integer.parseInt(request.getParameter("idAluno"));
        int idTurma = Integer.parseInt(request.getParameter("matriculaTurma"));
        //String aluno = request.getParameter("matriculaAluno");
        //String turma = request.getParameter("matriculaTurma");
        
        String dataMatricula = new SimpleDateFormat("dd/MM/yyyy").format(new Date());
        
        Object[] lista = new Object[] {idAluno, idTurma, dataMatricula};
        for (Object s : lista) {
            out.print(s);
        }
        
        if (retornaRegistros(lista)) {
            try {
                MatriculaBean matricula = new MatriculaBean();
                MatriculaDAO insere = new MatriculaDAO();
                
                matricula.setPessoaId(idAluno);
                matricula.setTurmaId(idTurma);
                matricula.setDataMatricula(dataMatricula);
                
                if (insere.insereMatricula(matricula)) {
                    response.sendRedirect("/admin/cadastroMatricula.jsp");
                } else {
                    out.print("<h1 style='color:#8b0000;'>Ocorreu um erro ao registrar. Contacte o Administrador</h1>");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        } else {
            out.print("<h1 style='color:#8b0000;'>Erro: Valores acessados não correspondem</h1>");
        }
    }
    
    protected boolean retornaRegistros(Object[] matricula) {
        for (int i = 0; i < matricula.length; i++) {
            try {
                if (matricula[i].toString().isEmpty()) {
                    if (matricula[i] != null) {
                        return false;
                    }
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        return true;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        
        out.print("POPP");
    }
}
