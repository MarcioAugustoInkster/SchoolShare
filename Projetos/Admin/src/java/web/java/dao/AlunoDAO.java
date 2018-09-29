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
public class AlunoDAO {
    public List<PessoaBean> listaAluno() {
        List<PessoaBean> listaAluno = new ArrayList<>();
        
        try {
            String sql = "SELECT id, nome, sobrenome, sexo, data_nascimento, email, telefone, ";
                sql += "login, tipo, ativo FROM pessoa ";
                sql += "WHERE tipo=3 AND ativo=1 GROUP BY nome";
            
            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                PessoaBean pessoa = new PessoaBean();
                
                pessoa.setId(rs.getInt("id"));
                pessoa.setNome(rs.getString("nome"));
                pessoa.setSobrenome(rs.getString("sobrenome"));
                pessoa.setSexo(rs.getString("sexo").charAt(0));
                pessoa.setDataDeNascimento(rs.getString("data_nascimento"));
                pessoa.setEmail(rs.getString("email"));
                pessoa.setTelefone(rs.getString("telefone"));
                pessoa.setLogin(rs.getString("login"));
                pessoa.setTipo(rs.getByte("tipo"));
                pessoa.setAtivo(rs.getBoolean("ativo"));
                
                listaAluno.add(pessoa);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return listaAluno;
    }
    
    public PessoaBean listaAlunoPorLogin(String login) {
        PessoaBean pessoa = null;
        
        try {
            String sql = "SELECT id, nome, sobrenome, data_nascimento, email, telefone, login ";
                sql += "FROM pessoa WHERE login='" + login + "' AND ativo=1 AND tipo=3";
            
            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                pessoa = new PessoaBean();
                
                pessoa.setId(rs.getInt("id"));
                pessoa.setNome(rs.getString("nome"));
                pessoa.setSobrenome(rs.getString("sobrenome"));
                pessoa.setDataDeNascimento(rs.getString("data_nascimento"));
                pessoa.setEmail(rs.getString("email"));
                pessoa.setTelefone(rs.getString("telefone"));
                pessoa.setLogin(rs.getString("login"));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return pessoa;
    }
}
