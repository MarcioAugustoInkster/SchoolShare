package web.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import web.java.classe.MatriculaBean;
import web.java.classe.PessoaBean;
import web.java.classe.TurmaBean;
import web.java.conexao.Banco;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class MatriculaDAO {
    public boolean insereMatricula(MatriculaBean matricula) {
        Connection coneccao = Banco.conecta();

        if (coneccao != null) {
            String sql = "INSERT INTO matricula ";
                sql += "(pessoa_id, turma_id, data_matricula) VALUES (?, ?, ?)";

            try {
                PreparedStatement pstmt = coneccao.prepareStatement(sql);

                pstmt.setInt(1, matricula.getPessoaId());
                pstmt.setInt(2, matricula.getTurmaId());
                pstmt.setString(3, matricula.getDataMatricula());

                pstmt.execute();
            } catch (Exception ex) {
                ex.printStackTrace();
            } finally {
                Banco.fecharBanco();
            }
            return true;
        }
        return false;
    }
    
     public List<MatriculaBean> listaMatricula() {
        List<MatriculaBean> listagem = new ArrayList<>();
        
        try {
            String sql = "SELECT p.nome, p.sobrenome, p.sexo, t.turma, m.data_matricula ";
                sql += "FROM matricula m INNER JOIN pessoa p ON p.id = m.pessoa_id ";
                sql += "INNER JOIN turma t ON t.id = m.turma_id";
            
            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                MatriculaBean matricula = new MatriculaBean();
                PessoaBean pessoa = new PessoaBean();
                TurmaBean turma = new TurmaBean();
                
                // Seleciona registros da tabela Pessoa
                pessoa.setNome(rs.getString("p.nome"));
                pessoa.setSobrenome(rs.getString("p.sobrenome"));
                pessoa.setSexo(rs.getString("p.sexo").charAt(0));
                
                // Seleciona registros da tabela Turma
                turma.setTurma(rs.getString("t.turma"));
                
                // Seleciona registros da tabela Matricula
                matricula.setPessoa(pessoa);
                matricula.setTurma(turma);
                matricula.setDataMatricula(rs.getString("m.data_matricula"));
                
                listagem.add(matricula);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        
        return listagem;
    }
}
