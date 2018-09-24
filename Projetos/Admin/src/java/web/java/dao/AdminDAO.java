package web.java.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import web.java.classe.PessoaBean;
import web.java.conexao.Banco;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class AdminDAO {
    public static List<PessoaBean> listaAdministrador() {
        List<PessoaBean> listaAdmin = new ArrayList<>();
        
        try {
            String sql = "SELECT nome, email, login, tipo, ativo FROM pessoa WHERE tipo=1 ";
                sql += "AND ativo=1 GROUP BY nome";
            
            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                PessoaBean admin = new PessoaBean();
                
                admin.setNome(rs.getString("nome"));
                admin.setEmail(rs.getString("email"));
                admin.setLogin(rs.getString("login"));
                admin.setTipo(rs.getByte("tipo"));
                admin.setAtivo(rs.getBoolean("ativo"));
                
                listaAdmin.add(admin);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return listaAdmin;
    }
}
