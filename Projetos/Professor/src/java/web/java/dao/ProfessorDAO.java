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
               
                
                + "nota = ?, telefone= ?, rg = ? WHERE id = ?";

        try {
            PreparedStatement ps = Banco.conecta().prepareStatement(sql);
            ps.setString(1, professores.getNome());
            ps.setString(2, professores.getSobrenome());
            ps.setString(4, professores.getEmail());
            ps.setString(12, professores.getTelefone());
            return ps.executeUpdate() == 1;

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return false;
    }
}
