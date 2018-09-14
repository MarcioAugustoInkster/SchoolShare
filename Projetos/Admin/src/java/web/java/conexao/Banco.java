package web.java.conexao;

import java.io.BufferedReader;
import java.io.FileReader;
import java.net.URL;
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

    private static final String HOST = "jdbc:mysql://localhost/schoolshare";
    private static final String USER = "root";
    private static final String PASSWORD = "";
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
                Statement st = conexao.createStatement();
                st.addBatch("SET FOREIGN_KEY_CHECKS = 0;");
                st.addBatch("TRUNCATE TABLE aluno;");
                st.addBatch("TRUNCATE TABLE avaliacao;");
                st.addBatch("TRUNCATE TABLE curso;");
                st.addBatch("TRUNCATE TABLE frequencia;");
                st.addBatch("TRUNCATE TABLE instituicao;");
                st.addBatch("TRUNCATE TABLE matricula;");
                st.addBatch("TRUNCATE TABLE pessoa;");
                st.addBatch("TRUNCATE TABLE professor;");
                st.addBatch("TRUNCATE TABLE turma;");
                st.addBatch("SET FOREIGN_KEY_CHECKS = 1;");
                st.executeBatch();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {

                fecharBanco();
            }
        }
    }

    private boolean executaSQL() {
        try {
            Statement stmt = conexao.createStatement();
            int i = 0;
            for (i = 1; i <= 16; i++) {
                URL resource = getClass().getResource("/web.java.conexao");
                
                FileReader fr = new FileReader("D:\\Entra21\\MeuGitHub\\SchoolShareAdmin\\src\\java\\web\\java\\conexao\\entrawebsql.sql" + i + ".sql");
                BufferedReader br = new BufferedReader(fr);
                stmt.execute(br.readLine());
            }
            stmt.close();
            conexao.close();
            
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    public static boolean authenticaLogin(String login, StringBuilder senha) {
        String sql = "SELECT login, senha FROM pessoa WHERE login=? AND senha=? AND ativo=1 AND tipo=1";

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
