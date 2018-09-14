package web.java.admin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Freakazed-PC
 */
public class SessaoAdmin {
    private static final String adminSession = "admin_session";
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
