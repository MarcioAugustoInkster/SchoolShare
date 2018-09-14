package web.java.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Daiana
 * @author Marcio : criado método validaLogin()
 */
public class Banco {

    private static final String HOST = "jdbc:mysql://localhost/schoolshare";
    private static final String USER = "root";
    private static final String PASSWORD = "";
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static Connection conexao = null;

    public static Connection obterBanco() {
        try {
            Class.forName(DRIVER);
            
            conexao = DriverManager.getConnection(HOST, USER, PASSWORD);
            
            return conexao;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void fecharBanco() {
        try {
            conexao.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public static boolean authenticaLogin(String login, StringBuilder senha) {
        boolean valida = false;
        
        String sql = "SELECT login, senha FROM pessoa WHERE login=? AND senha=? AND ativo=1";
        
        try {
            PreparedStatement pstmt = conexao.prepareStatement(sql);
            pstmt.setString(1, login);
            pstmt.setString(2, senha.toString());
            
            ResultSet rs = pstmt.executeQuery();
            
            valida = rs.next();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            fecharBanco();
        }
        return valida;
    }
}
