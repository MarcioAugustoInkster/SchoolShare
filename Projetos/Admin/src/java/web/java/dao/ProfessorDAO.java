package web.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import web.java.classe.PessoaBean;
import web.java.conexao.Banco;

/**
 *
 * @author Freakazed-PC
 */
public class ProfessorDAO {
    public static boolean insereProfessor(int id) {
        Connection coneccao = Banco.conecta();
        
        if (coneccao != null) {
            String sqlPessoa = "INSERT INTO professores (pessoas_id) VALUES (?)";
                
            try {
                PreparedStatement pstmt = coneccao.prepareStatement(sqlPessoa, PreparedStatement.RETURN_GENERATED_KEYS);

                pstmt.setInt(1, id);
                pstmt.execute();
                
                return true;
            } catch (Exception ex) {
                ex.printStackTrace();
            } finally {
                Banco.fecharBanco();
            }
        }
        return false;
    }
    
    public List<PessoaBean> listaProfessor() {
        List<PessoaBean> listaProfessor = new ArrayList<>();
        
        try {
            String sql = "SELECT pe.id, pe.nome_completo, pe.genero, pe.data_nascimento, ";
                sql += "pe.email, pe.telefone, pe.login, pe.ativo, pe.acesso FROM ";
                sql += "professores pf INNER JOIN pessoas pe ON ";
                sql += "pe.id = pf.pessoas_id WHERE ativo=TRUE ORDER BY nome_completo";
            
            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                PessoaBean pessoa = new PessoaBean();
                
                pessoa.setId(rs.getInt("id"));
                pessoa.setNomeCompleto(rs.getString("nome_completo"));
                pessoa.setGenero(rs.getByte("genero"));
                pessoa.setDataDeNascimento(rs.getString("data_nascimento"));
                pessoa.setEmail(rs.getString("email"));
                pessoa.setTelefone(rs.getString("telefone"));
                pessoa.setLogin(rs.getString("login"));
                pessoa.setAtivo(rs.getBoolean("ativo"));
                pessoa.setAcesso(rs.getByte("acesso"));
                
                listaProfessor.add(pessoa);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return listaProfessor;
    }
    
    public PessoaBean listaProfessorPorLogin(String login) {
        PessoaBean pessoa = null;
        
        try {
            String sql = "SELECT id, nome_completo, data_nascimento, email, telefone, login ";
                sql += "FROM professores WHERE login='" + login + "' AND ativo=TRUE AND acesso=2";
            
            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                pessoa = new PessoaBean();
                
                pessoa.setId(rs.getInt("id"));
                pessoa.setNomeCompleto(rs.getString("nome_completo"));
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
