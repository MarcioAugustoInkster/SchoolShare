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
public class ProfessorDAO {
    public static int carregaSelectProfessor(PessoaBean pessoa) {
        int count = 0;
        
        try {
            String sql = "SELECT id, nome, sobrenome FROM pessoa WHERE ativo=1";
            
            Statement stmt = Banco.obterBanco().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                pessoa.setId(rs.getInt("id"));
                pessoa.setNome(rs.getString("nome"));
                pessoa.setSobrenome(rs.getString("sobrenome"));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return count;
    }
    
    public List<PessoaBean> nomeProfessor() {
        List<PessoaBean> listaProfessor = new ArrayList<>();
        
        try {
            String sql = "SELECT id, nome, sobrenome FROM pessoa WHERE ";
                sql += "tipo>1 GROUP BY nome";
            
            Statement stmt = Banco.obterBanco().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                PessoaBean pessoa = new PessoaBean();
                
                pessoa.setId(rs.getInt("id"));
                pessoa.setNome(rs.getString("nome"));
                pessoa.setSobrenome(rs.getString("sobrenome"));
                
                listaProfessor.add(pessoa);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return listaProfessor;
    }
}
