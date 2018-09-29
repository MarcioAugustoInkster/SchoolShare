package web.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import web.java.classe.CursoBean;
import web.java.classe.ProfessorBean;
import web.java.classe.TurmaBean;
import web.java.conexao.Banco;

/**
 * @author Marcio Augusto Schlosser
 */
public class TurmaDAO {
    public static boolean insereTurma(TurmaBean turma) {
        Connection coneccao = Banco.conecta();

        if (coneccao != null) {
            String sql = "INSERT INTO turmas ";
                sql += "(cursos_id, professores_id, turma, data_inicio, data_final, carga_horaria) ";
                sql += "VALUES (?, ?, ?, ?, ?, ?)";
            
            try {
                PreparedStatement pstmt = coneccao.prepareStatement(sql);

                pstmt.setInt(1, turma.getCursoId());
                pstmt.setInt(2, turma.getProfessorId());
                pstmt.setString(3, turma.getTurma());
                pstmt.setString(4, turma.getDataInicio());
                pstmt.setString(5, turma.getDataFinal());
                pstmt.setShort(6, turma.getCargaHoraria());

                return true;
            } catch (Exception ex) {
                ex.printStackTrace();
            } finally {
                Banco.fecharBanco();
            }
        }
        return false;
    }

    public List<TurmaBean> listaTurma() {
        List<TurmaBean> listaTurma = new ArrayList<>();

        try {
            String sql = "SELECT t.id, c.curso, p.nome_completo, t.turma, t.data_inicio, ";
                sql += "t.data_final, t.carga_horaria FROM turmas t ";
                sql += "INNER JOIN cursos c ON c.id = t.cursos_id ";
                sql += "INNER JOIN pessoas p ON p.id = t.professores_id";

            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);

            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                TurmaBean turma = new TurmaBean();
                ProfessorBean professor = new ProfessorBean();
                CursoBean curso = new CursoBean();
                
                // Seleciona registros da tabela Turma
                turma.setId(rs.getInt("t.id"));
                turma.setTurma(rs.getString("t.turma"));
                turma.setDataInicio(rs.getString("t.data_inicio"));
                turma.setDataFinal(rs.getString("t.data_final"));
                turma.setCargaHoraria(rs.getShort("t.carga_horaria"));
                
                professor.setNomeCompleto(rs.getString("p.nome_completo"));
                
                curso.setCurso(rs.getString("c.curso"));
                
                turma.setProfessor(professor);
                turma.setCurso(curso);
                
                listaTurma.add(turma);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }

        return listaTurma;
    }
}
