package web.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import web.java.classe.TurmaBean;
import web.java.conexao.Banco;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class TurmaDAO {
    public static boolean insereTurma(TurmaBean turma) {
        Connection coneccao = Banco.conecta();
        
        if (coneccao != null) {
            String sql = "INSERT INTO turma ";
                sql += "(professor_id, curso_id, nome, data_inicio, data_final, carga_horaria) ";
                sql += "VALUES (?, ?, ?, ?, ?, ?)";

            try {
                PreparedStatement pstmt = coneccao.prepareStatement(sql);

                pstmt.setInt(1, turma.getProfessorId());
                pstmt.setInt(2, turma.getCursoId());
                pstmt.setString(3, turma.getNome());
                pstmt.setString(4, turma.getDataInicio());
                pstmt.setString(5, turma.getDataFinal());
                pstmt.setShort(6, turma.getCargaHoraria());
                
                pstmt.execute();
                
                return true;
            } catch (Exception ex) {
                ex.printStackTrace();
            } finally {
                Banco.fecharBanco();
            }
            //return true;
        }
        return false;
    }
}
