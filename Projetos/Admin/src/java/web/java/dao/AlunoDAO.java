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
 * @author Marcio Augusto Schlosser
 */
public class AlunoDAO {
    public static boolean insereAluno(int id) {
        Connection coneccao = Banco.conecta();
        
        if (coneccao != null) {
            String sqlPessoa = "INSERT INTO alunos (pessoas_id) VALUES (?)";
                
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
    
    public List<PessoaBean> listaAluno() {
        List<PessoaBean> listaAluno = new ArrayList<>();
        
        try {
            String sql = "SELECT pe.id, pe.nome_completo, pe.genero, pe.data_nascimento, ";
                sql += "pe.email, pe.telefone, pe.login, pe.ativo, pe.acesso FROM ";
                sql += "alunos al INNER JOIN pessoas pe ON ";
                sql += "pe.id = al.pessoas_id WHERE ativo=TRUE ";
                sql += "GROUP BY nome_completo";
            
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
            String sql = "SELECT p.id, p.nome_completo, p.data_nascimento, p.email, ";
                sql += "p.telefone, p.login ";
                sql += "FROM pessoas p ";
                sql += "INNER JOIN alunos a ";
                sql += "ON p.id = a.pessoas_id ";
                sql += "WHERE login='" + login + "' AND ativo=TRUE AND acesso=3";
            
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
