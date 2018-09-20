/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.java.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import web.java.bean.ProfessorBean;
import web.java.bean.PessoaBean;
import web.java.conexao.Banco;

/**
 *
 * @author Daiana
 */
public class ProfessorDAO {

    public List<PessoaBean> obterTodos() {
        List<PessoaBean> professor = new ArrayList<>();
        String sql = "SELECT * FROM pessoa";
        try {
            Statement st = Banco.conecta().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while (resultSet.next()) {
                PessoaBean pessoa = new PessoaBean();
                pessoa.setId(resultSet.getInt("id"));
                pessoa.setNome(resultSet.getString("nome"));
                pessoa.setSobrenome(resultSet.getString("sobrenome"));
                pessoa.setSexo(resultSet.getString("sexo").charAt(0));
                pessoa.setDataDeNascimento(resultSet.getString("data_nascimento"));
                pessoa.setEmail(resultSet.getString("email"));
                pessoa.setTelefone(resultSet.getString("telefone"));
                pessoa.setTipo(resultSet.getByte("tipo"));
                pessoa.setAtivo(resultSet.getBoolean("ativo"));

                professor.add(pessoa);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return professor;
    }

    public PessoaBean obterPeloId(int id) {
        String sql = "SELECT * FROM pessoa WHERE id = ?";
        try {
            PreparedStatement ps = Banco.conecta().prepareStatement(sql);

            ps.setInt(1, id);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            if (resultSet.next()) {
                PessoaBean pessoa = new PessoaBean();
                pessoa.setId(id);
                pessoa.setNome(resultSet.getString("nome"));
                pessoa.setSobrenome(resultSet.getString("sobrenome"));
                pessoa.setSexo(resultSet.getString("sexo").charAt(0));
                pessoa.setDataDeNascimento(resultSet.getString("data_nascimento"));
                pessoa.setEmail(resultSet.getString("email"));
                pessoa.setTelefone(resultSet.getString("telefone"));
                pessoa.setLogin(resultSet.getString("login"));
                pessoa.setTipo(resultSet.getByte("tipo"));
                pessoa.setAtivo(resultSet.getBoolean("ativo"));

                return pessoa;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return null;
    }

    public boolean alterar(ProfessorBean professores) {
        String sql = "UPDATE professor SET nome = ?,sobrenome=?,"
                + "cpf=?, rua=?, bairro=?, cidade= ?, pais= ? ,frequencia = ?, "
                + "nota = ?, telefone= ?, rg = ? WHERE id = ?";

        try {
            PreparedStatement ps = Banco.conecta().prepareStatement(sql);
            ps.setString(1, professores.getNome());
            ps.setString(2, professores.getSobrenome());
            ps.setString(3, professores.getCpf());
            ps.setString(4, professores.getEmail());
            ps.setString(5, professores.getRua());
            ps.setString(6, professores.getBairro());
            ps.setString(7, professores.getCidade());
            ps.setString(8, professores.getPais());
            ps.setString(12, professores.getTelefone());
            ps.setString(13, professores.getRg());
            ps.setString(14, professores.getFormacao());
            ps.setString(15, professores.getNomeDaMae());
            ps.setString(16, professores.getNomeDoPai());
            ps.setString(17, professores.getEstadoDeNascimento());
            ps.setString(18, professores.getCidadeDeNascimento());
            return ps.executeUpdate() == 1;

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return false;
    }
}
