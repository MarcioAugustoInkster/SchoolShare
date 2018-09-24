package web.java.admin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/* 
    Document   : SessaoAdmin
    Created on : 21/09/2018, 10:22:36
    Author     : Marcio Augusto Schlosser
*/

public class SessaoAdmin {
    private static final String adminSession = "sessao_usuario";
    private static PrintWriter out;
    
    public static boolean verificaSessao(HttpServletRequest request, HttpServletResponse response) 
        throws IOException {
        
        String sessao = (String)request.getSession(false).getAttribute(adminSession);
        
        if (sessao == null) {
            response.sendRedirect("/login.jsp");
        } else {
            return true;
        }
        return false;
    }
    
    public static boolean verificaSessaoAluno(HttpServletRequest request, HttpServletResponse response) 
        throws IOException {
        
        String sessao = (String)request.getSession(false).getAttribute(adminSession);
        
        if (sessao == null) {
            response.sendRedirect("/alunoLogin.jsp");
        } else {
            return true;
        }
        return false;
    }
    
    public static boolean verificaSessaoProfessor(HttpServletRequest request, HttpServletResponse response) 
        throws IOException {
        
        String sessao = (String)request.getSession(false).getAttribute(adminSession);
        
        if (sessao == null) {
            response.sendRedirect("/professorLogin.jsp");
        } else {
            return true;
        }
        return false;
    }
    
    public static boolean criaSessao(HttpServletRequest request, String login) {
        HttpSession sessao = request.getSession();
        
        try {
            sessao.setAttribute(adminSession, login);
            sessao.setMaxInactiveInterval(600);
            
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    public static String retornaSessao(HttpServletRequest request) {
        String sessao = (String)request.getSession(false).getAttribute(adminSession);
        
        if (sessao != null) {
            return sessao;
        }
        return null;
    }
}
