package web.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import web.java.classe.MatriculaBean;
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
}
