package web.dao;

import web.bean.AlunoBean;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import web.conexao.Banco;

/**
 *
 * @author Daiana
 */

public class AlunoDAO {
    public List<AlunoBean>obterTodos(){
        List<AlunoBean> alunos = new ArrayList<>();
        String sql = "SELECT * FROM alunos";
        try {
            Statement st = Banco.obterBanco().createStatement();
                st.execute(sql);
                ResultSet resultSet = st.getResultSet();
                while (resultSet.next()){
                    AlunoBean aluno = new AlunoBean();
                    aluno.setId(resultSet.getInt("id"));
                    aluno.setNome(resultSet.getString("nome"));
                    alunos.add(aluno);
            }
        }catch(SQLException e){
        e.printStackTrace();
        }finally{
        Banco.fecharBanco();
        }return alunos;
    }


public int adicionar(AlunoBean aluno){

String sql = "INSERT INT aluno(nome, codigoDeMatricula, frequencia, nota"
        + ")VALUES(?,?,?,?,?,?,?)";
    try{ 
        PreparedStatement ps = Banco.obterBanco().prepareStatement(
        sql, PreparedStatement.RETURN_GENERATED_KEYS);
        int quantidade = 1;
        ps.setString(quantidade++ , aluno.getNome());
        ps.setString(quantidade++, aluno.getCodigoDeMatricula());
        ps.setDouble(quantidade++ , aluno.getNota());
        ps.setDouble(quantidade++, aluno.getFrequencia());
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
    String sql = "DELETE FROM alunos WHERE id = ? ";
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

public static AlunoBean obterPeloId(int id){
   String sql = "SELECT * FROM alunos WHERE id = ?";
   try{
        PreparedStatement ps = Banco.obterBanco().prepareStatement(sql);
        
        ps.setInt(1 , id); 
        ps.execute();
        ResultSet resultSet = ps.getResultSet();
        if(resultSet.next()){
            AlunoBean alunos = new AlunoBean();
            alunos.setId(id);
            alunos.setCodigoDeMatricula(resultSet.getString("codigoDeMatricula"));
            alunos.setFrequencia(resultSet.getByte("frequencia"));
            alunos.setNome(resultSet.getString("nome"));
            alunos.setSobrenome(resultSet.getString("sobrenome"));
            alunos.setCpf(resultSet.getString("cpf"));
            alunos.setRg(resultSet.getString("rg"));
            alunos.setNota(resultSet.getFloat("nota"));
            alunos.setRua(resultSet.getString("rua"));
            alunos.setBairro(resultSet.getString("bairro"));
            alunos.setCidade(resultSet.getString("cidade"));
            alunos.setTelefone(resultSet.getString("telefone"));
            
            
            return alunos;
        }    
    }catch(SQLException e){ e.printStackTrace();
    }finally {Banco.fecharBanco();} 
    return null;
    }

public boolean alterar(AlunoBean alunos){
    String sql = "UPDATE alunos SET nome = ?,sobrenome=?,codigoDeMatricula = ? ,"
            + "cpf=?, rua=?, bairro=?, cidade= ?, pais= ? ,frequencia = ?, "
            + "nota = ?, telefone= ?, rg = ? WHERE id = ?";
    
    try{
        PreparedStatement ps = Banco.obterBanco().prepareStatement(sql);
        ps.setString(1 , alunos.getNome());
        ps.setString(2,  alunos.getSobrenome());
        ps.setString(3,  alunos.getCpf());
        ps.setString(4,  alunos.getRg());
        ps.setString(5,  alunos.getEmail());
        ps.setString(6,  alunos.getRua());
        ps.setString(7,  alunos.getComplemento());
        ps.setString(8,  alunos.getBairro());
        ps.setString(9,  alunos.getCidade());
        ps.setString(10, alunos.getCodigoDeMatricula());
        ps.setDouble(11, alunos.getFrequencia());
        ps.setFloat (12, alunos.getNota());
        ps.setString(13, alunos.getTelefone());
        
        return ps.executeUpdate() == 1;
        
    }catch(SQLException e){
        e.printStackTrace();
    }finally {
        Banco.fecharBanco();
    }return false;
}
}


