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
            String sqlTurma = "INSERT INTO turma ";
            sqlTurma += "(pessoa_id, curso_id, turma, data_inicio, data_final, carga_horaria) ";
            sqlTurma += "VALUES (?, ?, ?, ?, ?, ?)";
            
            try {
                PreparedStatement pstmtTurma = coneccao.prepareStatement(sqlTurma);

                pstmtTurma.setInt(1, turma.getProfessorId());
                pstmtTurma.setInt(2, turma.getCursoId());
                pstmtTurma.setString(3, turma.getTurma());
                pstmtTurma.setString(4, turma.getDataInicio());
                pstmtTurma.setString(5, turma.getDataFinal());
                pstmtTurma.setShort(6, turma.getCargaHoraria());

                pstmtTurma.execute();

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
            String sql = "SELECT p.nome, p.sobrenome, c.curso, t.id, t.turma, t.data_inicio, ";
            sql += "t.data_final, t.carga_horaria FROM turma t INNER JOIN pessoa p ";
            sql += "ON p.id = t.pessoa_id INNER JOIN curso c ON c.id = t.curso_id ";
            sql += "ORDER BY t.turma";

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
                
                professor.setNome(rs.getString("p.nome"));
                professor.setSobrenome(rs.getString("p.sobrenome"));
                
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
