package web.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import web.java.classe.InstituicaoBean;
import web.java.conexao.Banco;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class InstituicaoDAO {

    public static boolean insereInstituicao(InstituicaoBean instituicao) {
        Connection coneccao = Banco.conecta();

        if (coneccao != null) {
            try {
                String sql = "INSERT INTO instituicao (";
                sql += "instituicao, endereco, numero,cep, bairro, cidade, estado";
                sql += ") VALUES (?, ?, ?, ?, ?, ?, ?)";

                PreparedStatement pstmt = coneccao.prepareStatement(sql);

                pstmt.setString(1, instituicao.getInstituicao());
                pstmt.setString(2, instituicao.getEndereco());
                pstmt.setString(3, instituicao.getNumero());
                pstmt.setString(4, instituicao.getCep());
                pstmt.setString(5, instituicao.getBairro());
                pstmt.setString(6, instituicao.getCidade());
                pstmt.setString(7, instituicao.getEstado());

                pstmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                Banco.fecharBanco();
            }
            return true;
        }
        return false;
    }

    public List<InstituicaoBean> listaInstituicao() {
        List<InstituicaoBean> listaInstituicao = new ArrayList<>();

        try {
            String sql = "SELECT id, instituicao, endereco, numero, cep, bairro, cidade, estado FROM instituicao";

            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);

            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                InstituicaoBean instituicao = new InstituicaoBean();

                instituicao.setId(rs.getInt("id"));
                instituicao.setInstituicao(rs.getString("instituicao"));
                instituicao.setEndereco(rs.getString("endereco"));
                instituicao.setNumero(rs.getString("numero"));
                instituicao.setCep(rs.getString("cep"));
                instituicao.setBairro(rs.getString("bairro"));
                instituicao.setCidade(rs.getString("cidade"));
                instituicao.setEstado(rs.getString("estado"));

                listaInstituicao.add(instituicao);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return listaInstituicao;
    }

    public List<InstituicaoBean> listaInstituicaoPorId(int id) {
        List<InstituicaoBean> listaInstituicao = new ArrayList<>();

        try {
            String sql = "SELECT id, instituicao, endereco, numero, cep, bairro, cidade, estado ";
            sql += "FROM instituicao WHERE id=" + id;

            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);

            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                InstituicaoBean instituicao = new InstituicaoBean();

                instituicao.setId(rs.getInt("id"));
                instituicao.setInstituicao(rs.getString("instituicao"));
                instituicao.setEndereco(rs.getString("endereco"));
                instituicao.setNumero(rs.getString("numero"));
                instituicao.setCep(rs.getString("cep"));
                instituicao.setBairro(rs.getString("bairro"));
                instituicao.setCidade(rs.getString("cidade"));
                instituicao.setEstado(rs.getString("estado"));

                listaInstituicao.add(instituicao);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return listaInstituicao;
    }

    public boolean alteraInstituicao(InstituicaoBean instituicao) {
        String sql = "UPDATE instituicao SET instituicao = ?, endereco = ?, numero = ?, cep = ?, ";
            sql += "bairro = ?, cidade = ?, estado = ? WHERE id = ?";
        
        try {
            PreparedStatement ps = Banco.conecta().prepareStatement(sql);
            ps.setString(1, instituicao.getInstituicao());
            ps.setString(2, instituicao.getEndereco());
            ps.setInt(3, Integer.parseInt(instituicao.getNumero()));
            ps.setString(4, instituicao.getCep());
            ps.setString(5, instituicao.getBairro());
            ps.setString(6, instituicao.getCidade());
            ps.setString(7, instituicao.getEstado());
            ps.setInt(8, instituicao.getId());
            
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return false;
    }
}
