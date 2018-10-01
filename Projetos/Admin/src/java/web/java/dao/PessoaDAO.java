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
import web.java.classe.PessoaBean;
import web.java.conexao.Banco;
import web.java.mapping.GeraValor;

public class PessoaDAO {

    public static int inserePessoa(PessoaBean pessoa) {
        Connection coneccao = Banco.conecta();
        int ultimoId = 0;

        if (coneccao != null) {
            String sqlPessoa = "INSERT INTO pessoas ";
            sqlPessoa += "(nome_completo, genero, data_nascimento, email, telefone, login, senha, ativo, acesso) ";
            sqlPessoa += "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

            try {
                PreparedStatement pstmt = coneccao.prepareStatement(sqlPessoa, Statement.RETURN_GENERATED_KEYS);

                pstmt.setString(1, pessoa.getNomeCompleto());
                pstmt.setByte(2, pessoa.getGenero());
                pstmt.setString(3, pessoa.getDataDeNascimento());
                pstmt.setString(4, pessoa.getEmail());
                pstmt.setString(5, pessoa.getTelefone());
                pstmt.setString(6, pessoa.getLogin());
                pstmt.setString(7, pessoa.getSenha());
                pstmt.setBoolean(8, pessoa.isAtivo());
                pstmt.setInt(9, pessoa.getAcesso());

                pstmt.executeUpdate();

                ResultSet rs = pstmt.getGeneratedKeys();

                if (rs.next()) {
                    ultimoId = rs.getInt(1);
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            } finally {
                Banco.fecharBanco();
            }
        }
        return ultimoId;
    }

    public int retornaUsuarioId(String login) {
        int id = 0;

        try {
            String sql = "SELECT id FROM pessoas WHERE login='" + login + "' AND ativo=TRUE";

            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);

            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                id = rs.getInt("id");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return id;
    }

    public static int retornaUltimoId() {
        Connection coneccao = Banco.conecta();
        Statement stmt = null;
        int retornaInteiro = 0;

        if (coneccao != null) {
            String sql = "SELECT id FROM pessoas";

            try {
                stmt = coneccao.createStatement();
                stmt.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);

                ResultSet rs = stmt.getGeneratedKeys();

                if (rs.next()) {
                    retornaInteiro = rs.getInt(1);
                }
                rs.close();
                stmt.close();

            } catch (Exception ex) {
                ex.printStackTrace();
            } finally {
                Banco.fecharBanco();
            }
        }
        return retornaInteiro;
    }

    public boolean alteraSenhaUsuario(PessoaBean pessoa) {
        Connection coneccao = Banco.conecta();
        
        String sql = "UPDATE pessoas SET senha = ? WHERE id = ?";
        
        int pegaId = 0;
        
        try {
            if (pessoa.getEmail() != null) {
                pegaId = buscaPessoaIdPorEmail(pessoa.getEmail());
            } else if (pessoa.getLogin() != null) {
                pegaId = buscaPessoaIdPorLogin(pessoa.getLogin());
            }
            
            String novaSenha = GeraValor.geraSenhaEncriptado(pessoa.getSenha()).toString();
            
            PreparedStatement ps = coneccao.prepareStatement(sql);
            ps.setString(1, novaSenha);
            ps.setInt(2, pegaId);
            
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return false;
    }
    
    private int buscaPessoaIdPorEmail(String email) {
        int id = 0;

        try {
            String sql = "SELECT id FROM pessoas WHERE email='" + email + "' AND ativo=TRUE";

            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);

            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                id = rs.getInt("id");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        
        return id;
    }
    
    private int buscaPessoaIdPorLogin(String login) {
        int id = 0;

        try {
            String sql = "SELECT id FROM pessoas WHERE login='" + login + "' AND ativo=TRUE";

            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);

            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                id = rs.getInt("id");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        
        return id;
    }
}
