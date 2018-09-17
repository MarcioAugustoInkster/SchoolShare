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
 *
 * @author Marcio Augusto Schlosser
 */
public class TurmaDAO {
    private static List<ProfessorBean> listaProfessor;
    private static List<CursoBean> listaCurso;
    
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
        }
        return false;
    }
    
    public List<TurmaBean> listaTurma() {
        List<TurmaBean> listaTurma = new ArrayList<>();
        listaProfessor = new ArrayList<>();
        listaCurso = new ArrayList<>();
        
        try {
            String sql = "SELECT p.nome, p.sobrenome, c.nome, t.nome, t.data_inicio, ";
                sql += "t.data_final, t.carga_horaria FROM turma t LEFT JOIN pessoa p ";
                sql += "ON p.id = t.professor_id LEFT JOIN curso c ON c.id = t.curso_id ";
                sql += "ORDER BY t.nome";
            
            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                TurmaBean turma = new TurmaBean();
                ProfessorBean professor = new ProfessorBean();
                CursoBean curso = new CursoBean();
                
                // Seleciona registros da tabela Turma
                turma.setNome(rs.getString("t.nome"));
                turma.setDataInicio(rs.getString("t.data_inicio"));
                turma.setDataFinal(rs.getString("t.data_final"));
                turma.setCargaHoraria(rs.getShort("t.carga_horaria"));
                
                // Seleciona registros da tabela Professor
                professor.setNome(rs.getString("p.nome"));
                professor.setSobrenome(rs.getString("p.sobrenome"));

                // Seleciona registros da tabela Curso
                curso.setNome(rs.getString("c.nome"));
                
                listaTurma.add(turma);
                listaProfessor.add(professor);
                listaCurso.add(curso);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        
        return listaTurma;
    }
    
    public List<ProfessorBean> listaProfessor() {
        return listaProfessor;
    }
    
    public List<CursoBean> listaCurso() {
        return listaCurso;
    }
}

/**
 * 
 * "SELECT p.nome, p.sobrenome, c.nome, t.nome, t.data_inicio, ";
                sql += "t.data_final, t.carga_horaria FROM turma t LEFT JOIN pessoa p ";
                sql += "ON p.id = t.professor_id LEFT JOIN curso c ON c.id = t.curso_id ";
                sql += "ORDER BY t.nome";
 * 
 */