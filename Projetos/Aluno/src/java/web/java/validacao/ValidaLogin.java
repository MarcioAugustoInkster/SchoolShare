package web.java.validacao;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.conexao.Banco;

@WebServlet(urlPatterns = "/validaLogin")

public class ValidaLogin extends HttpServlet {
    private static PrintWriter out;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        out = response.getWriter();
        
        String login = request.getParameter("fl-user-field");
        String senha = request.getParameter("fl-pswd-field");
        
        out.println(login);
        out.println(senha);
        StringBuilder encriptaSenha = new StringBuilder(geraSenhaEncriptado(senha));
        out.println(encriptaSenha);
        
        if (Banco.obterBanco() != null) {
            if (Banco.authenticaLogin(login, encriptaSenha)) {
                try {
                    ServletContext context = getServletContext();
                    out.print("ok");
                    //RequestDispatcher rd = context.getRequestDispatcher("/index");
                    //rd.forward(req, resp);
                    response.sendRedirect("./usuario/admin/admin.jsp");
                    //context.getRequestDispatcher("/index").forward(req, resp);
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("./pages/login.jsp");
                //rd.forward(request, response);
                //response.sendRedirect("./pages/login.jsp");
                out.print("no");
            }
        }
    }
    
    private static StringBuilder geraSenhaEncriptado(String senha) {
        StringBuilder sb = new StringBuilder();
        
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-512");
            byte[] pswd = md.digest(senha.getBytes(StandardCharsets.UTF_8));
            
            if (pswd != null) {
                for (int i = 0; i < pswd.length; i++) {
                    sb.append(Integer.toString((pswd[i] & 0xff) + 0x100, 16).substring(1)
                        .toUpperCase()).toString();
                }
                return sb;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
