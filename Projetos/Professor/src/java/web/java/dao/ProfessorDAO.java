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
    public List<ProfessorBean>obterTodos(){
        List<ProfessorBean> professor = new ArrayList<>();
        String sql = "SELECT * FROM professor";
        try {
            Statement st = Banco.obterBanco().createStatement();
                st.execute(sql);
                ResultSet resultSet = st.getResultSet();
                while (resultSet.next()){
                    ProfessorBean professores = new ProfessorBean();
                    professores.setId(resultSet.getInt("id"));
                    professores.setNome(resultSet.getString("nome"));
                    professor.add(professores);
            }
        }catch(SQLException e){
        e.printStackTrace();
        }finally{
        Banco.fecharBanco();
        }return professor;
    }
public int adicionar(ProfessorBean professor){

String sql = "INSERT INTO prfessor(nome,)VALUES(?,?,?,?,?,?,?)";
    try{ 
        PreparedStatement ps = Banco.obterBanco().prepareStatement(
        sql, PreparedStatement.RETURN_GENERATED_KEYS);
        int quantidade = 1;
        ps.setString(quantidade++ , professor.getNome());
        ps.execute();
        ResultSet resultSet = ps.getGeneratedKeys();
        if (resultSet.next()){
            return resultSet.getInt(1);
        }

    }catch(SQLException e){
        e.printStackTrace();
    }finally{
        Banco.fecharBanco();
    }return -1;
}

public boolean excluir(int id){
    String sql = "DELETE FROM professor WHERE id = ? ";
     try{
        PreparedStatement ps = Banco.obterBanco().prepareStatement(sql);
        ps.setInt(1, id);
        return ps.executeUpdate() ==1;
    } catch (SQLException e){
        e.printStackTrace();
    }finally{
        Banco.fecharBanco();
    }
    return false;
}

public ProfessorBean obterPeloId(int id){
   String sql = "SELECT * FROM professor WHERE id = ?";
   try{
        PreparedStatement ps = Banco.obterBanco().prepareStatement(sql);
        
        ps.setInt(1 , id); 
        ps.execute();
        ResultSet resultSet = ps.getResultSet();
        if(resultSet.next()){
            ProfessorBean professores = new ProfessorBean();
            professores.setId(id);
            professores.setNome(resultSet.getString("nome"));
            professores.setSobrenome(resultSet.getString("sobrenome"));
            professores.setCpf(resultSet.getString("cpf"));
            professores.setTelefone(resultSet.getString("telefone"));
            professores.setRg(resultSet.getString("rg"));
            
            return professores;
        }    
    }catch(SQLException e){ e.printStackTrace();
    }finally {Banco.fecharBanco();} 
    return null;
    }

public boolean alterar(ProfessorBean professores){
    String sql = "UPDATE professor SET nome = ?,sobrenome=?,"
            + "cpf=?, rua=?, bairro=?, cidade= ?, pais= ? ,frequencia = ?, "
            + "nota = ?, telefone= ?, rg = ? WHERE id = ?";
    
    try{
        PreparedStatement ps = Banco.obterBanco().prepareStatement(sql);
        ps.setString(1 , professores.getNome());
        ps.setString(2,  professores.getSobrenome());
        ps.setString(3,  professores.getCpf());
        ps.setString(4,  professores.getEmail());
        ps.setString(5,  professores.getRua());
        ps.setString(6,  professores.getBairro());
        ps.setString(7,  professores.getCidade());
        ps.setString(8,  professores.getPais());
        ps.setString(12, professores.getTelefone());
        ps.setString(13, professores.getRg());
        ps.setString(14, professores.getFormacao());
        ps.setString(15, professores.getNomeDaMae());
        ps.setString(16, professores.getNomeDoPai());
        ps.setString(17, professores.getEstadoDeNascimento());
        ps.setString(18, professores.getCidadeDeNascimento());
        return ps.executeUpdate() == 1;
        
    }catch(SQLException e){
        e.printStackTrace();
    }finally {
        Banco.fecharBanco();
    }return false;
}
}


