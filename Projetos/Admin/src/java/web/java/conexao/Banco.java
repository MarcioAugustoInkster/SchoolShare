package web.java.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Daiana
 * @author Marcio : criado método validaLogin()
 */
public class Banco {
    /* Descomentar para conecção para localhost:8080 */
    
    private static final String HOST = "jdbc:mysql://localhost/schoolshare";
    private static final String USER = "root";
    private static final String PASSWORD = "";
    
    
    /* Descomentar para conecção para web Amazon */
    /*
    private static final String HOST = "jdbc:mysql://";
    private static final String USER = "root";
    private static final String PASSWORD = "";
    */
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static Connection conexao = null;
    
    public static Connection conecta() {
        try {
            Class.forName(DRIVER);

            conexao = DriverManager.getConnection(HOST, USER, PASSWORD);

            return conexao;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public static void fecharBanco() {
        try {
            conexao.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public static void truncate() {
        conecta();

        if (conexao != null) {
            try {
                // Não será necessário no momento limpara tabelas
                Statement st = conexao.createStatement();
                st.addBatch("SET FOREIGN_KEY_CHECKS = 0;");
                st.addBatch("TRUNCATE TABLE instituicao;");
                st.addBatch("TRUNCATE TABLE curso;");
                st.addBatch("TRUNCATE TABLE pessoa;");
                st.addBatch("TRUNCATE TABLE professor;");
                st.addBatch("TRUNCATE TABLE turma;");
                st.addBatch("TRUNCATE TABLE aluno;");
                st.addBatch("TRUNCATE TABLE matricula;");
                st.addBatch("TRUNCATE TABLE notas;");
                st.addBatch("TRUNCATE TABLE frequencia;");
                st.addBatch("SET FOREIGN_KEY_CHECKS = 1;");
                st.executeBatch();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                fecharBanco();
            }
        }
    }

    public static boolean authenticaLogin(String login, StringBuilder senha) {
        String sql = "SELECT login, senha FROM pessoas WHERE login=? AND senha=? AND ativo=TRUE AND acesso=1";

        try {
            PreparedStatement pstmt = conexao.prepareStatement(sql);
            pstmt.setString(1, login);
            pstmt.setString(2, senha.toString());

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                return true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            fecharBanco();
        }
        return false;
    }
    
    public static boolean authenticaLoginAluno(String login, StringBuilder senha) {
        String sql = "SELECT login, senha FROM pessoas WHERE login=? AND senha=? AND ativo=TRUE AND acesso=3";

        try {
            PreparedStatement pstmt = conexao.prepareStatement(sql);
            pstmt.setString(1, login);
            pstmt.setString(2, senha.toString());

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                return true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            fecharBanco();
        }
        return false;
    }
    
    public static boolean authenticaLoginProfessor(String login, StringBuilder senha) {
        String sql = "SELECT login, senha FROM pessoas WHERE login=? AND senha=? AND ativo=TRUE AND acesso=2";

        try {
            PreparedStatement pstmt = conexao.prepareStatement(sql);
            pstmt.setString(1, login);
            pstmt.setString(2, senha.toString());

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                return true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            fecharBanco();
        }
        return false;
    }
}
