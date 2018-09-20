/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.java.professor;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Alunos
 */
public class SessaoProfessor {
    private static final String professorSession = "professor_session";
    private static PrintWriter out;
    
    public static boolean verificaSessao(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String sessao = (String)request.getSession(false).getAttribute(professorSession);
        if(sessao == null) {
            response.sendRedirect("/login.jsp");
        } else {
            return true;
        } 
        return false;
        
        }
        
    public static boolean criaSessao(
    HttpServletRequest request, String login) {
        HttpSession sessao = request.getSession();
        try{
            sessao.setAttribute(professorSession, login);
            sessao.setMaxInactiveInterval(600);
            
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    public static String retornaSessao(
    HttpServletRequest request){
        String sessao = (String)request.getSession(false).getAttribute(professorSession);
        if(sessao != null) {
            return sessao;
        }
        return null;
    }
    
    }
    

