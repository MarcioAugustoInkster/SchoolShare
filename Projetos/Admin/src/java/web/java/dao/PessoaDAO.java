
/**
 *
 * @author Daiana & Marcio
 */
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

public class PessoaDAO {
    public static boolean inserePessoa(PessoaBean pessoa) {
        Connection coneccao = Banco.conecta();
        
        if (coneccao != null) {
            String sql = "INSERT INTO pessoa ";
                sql += "(nome, sobrenome, sexo, data_nascimento, email, telefone, login, senha, tipo, ativo) ";
                sql += "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            try {
                PreparedStatement pstmt = coneccao.prepareStatement(sql);

                pstmt.setString(1, pessoa.getNome());
                pstmt.setString(2, pessoa.getSobrenome());
                pstmt.setString(3, String.valueOf(pessoa.getSexo()));
                pstmt.setString(4, pessoa.getDataDeNascimento());
                pstmt.setString(5, pessoa.getEmail());
                pstmt.setString(6, pessoa.getTelefone());
                pstmt.setString(7, pessoa.getLogin());
                pstmt.setString(8, pessoa.getSenha());
                pstmt.setInt(9, pessoa.getTipo());
                pstmt.setBoolean(10, pessoa.isAtivo());

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
    
    public List<PessoaBean> listaNomeProfessor() {
        List<PessoaBean> listaProfessor = new ArrayList<>();
        
        try {
            String sql = "SELECT id, nome, sobrenome FROM pessoa ";
                sql += "WHERE tipo=2 AND ativo=1 GROUP BY nome";
            
            Statement stmt = Banco.conecta().createStatement();
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

    public List<PessoaBean> listaProfessor() {
        List<PessoaBean> listaProfessor = new ArrayList<>();
        
        try {
            String sql = "SELECT nome, sobrenome, sexo, data_nascimento, email, telefone, ";
                sql += "login, tipo, ativo FROM pessoa ";
                sql += "WHERE tipo=2 AND ativo=1 GROUP BY nome";
            
            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                PessoaBean pessoa = new PessoaBean();
                
                pessoa.setNome(rs.getString("nome"));
                pessoa.setSobrenome(rs.getString("sobrenome"));
                pessoa.setSexo(rs.getString("sexo").charAt(0));
                pessoa.setDataDeNascimento(rs.getString("data_nascimento"));
                pessoa.setEmail(rs.getString("email"));
                pessoa.setTelefone(rs.getString("telefone"));
                pessoa.setLogin(rs.getString("login"));
                pessoa.setTipo(rs.getByte("tipo"));
                pessoa.setAtivo(rs.getBoolean("ativo"));
                
                listaProfessor.add(pessoa);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return listaProfessor;
    }
    
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
    
    public PessoaBean listaUsuarioPorLogin(String login) {
        PessoaBean aluno = null;
        
        String sql = "SELECT nome, sobrenome, login FROM pessoa WHERE login='" + login + "' AND tipo=3";
        
        try {
            PreparedStatement pstmt = Banco.conecta().prepareStatement(sql);
            
            pstmt.setString(1, login);
            
            ResultSet rs = pstmt.getResultSet();
            
            while (rs.next()) {
                aluno = new PessoaBean();
                
                //aluno.setId(rs.getInt("id"));
                aluno.setNome(rs.getString("nome"));
                aluno.setSobrenome(rs.getString("sobrenome"));
                //aluno.setSexo(rs.getString("sexo").charAt(0));
                //aluno.setDataDeNascimento(rs.getString("data_nascimento"));
                //aluno.setEmail(rs.getString("email"));
                //aluno.setTelefone(rs.getString("telefone"));
                aluno.setLogin(rs.getString("login"));
                //aluno.setTipo(rs.getByte("tipo"));
                //aluno.setAtivo(rs.getBoolean("ativo"));

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return aluno;
    }
}
