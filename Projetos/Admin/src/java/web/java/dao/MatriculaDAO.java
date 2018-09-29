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
            String sql = "INSERT INTO matriculas ";
                sql += "(alunos_id, turmas_id, matricula, data_matricula, data_inativo) VALUES (?, ?, ?, ?, ?)";

            try {
                PreparedStatement pstmt = coneccao.prepareStatement(sql);

                pstmt.setInt(1, matricula.getPessoaId());
                pstmt.setInt(2, matricula.getTurmaId());
                pstmt.setString(3, matricula.getMatricula());
                pstmt.setString(4, matricula.getDataMatricula());
                pstmt.setString(5, matricula.getDataInativo());

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
            String sql = "SELECT m.id, m.matricula, m.data_matricula ";
                sql += "FROM matriculas m ";
            
            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                MatriculaBean matricula = new MatriculaBean();
                PessoaBean pessoa = new PessoaBean();
                TurmaBean turma = new TurmaBean();
                
                // Seleciona registros da tabela Pessoa
                //pessoa.setNomeCompleto(rs.getString("p.nome_completo"));
                
                // Seleciona registros da tabela Turma
                //turma.setTurma(rs.getString("t.turma"));
                
                // Seleciona registros da tabela Matricula
                matricula.setId(rs.getInt("m.id"));
                //matricula.setPessoa(pessoa);
                //matricula.setTurma(turma);
                matricula.setMatricula(rs.getString("m.matricula"));
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
