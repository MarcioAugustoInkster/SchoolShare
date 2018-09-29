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
            String sql = "SELECT nome_completo, email, login, ativo, acesso FROM pessoas ";
                sql += "WHERE acesso=1 AND ativo=TRUE";
            
            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                PessoaBean admin = new PessoaBean();
                
                admin.setNomeCompleto(rs.getString("nome_completo"));
                admin.setLogin(rs.getString("login"));
                admin.setEmail(rs.getString("email"));
                admin.setAcesso(rs.getByte("acesso"));
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
