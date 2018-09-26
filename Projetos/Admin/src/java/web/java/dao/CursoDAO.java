package web.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import web.java.classe.CursoBean;
import web.java.conexao.Banco;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class CursoDAO {
    public static boolean insereCurso(CursoBean curso) {
        Connection coneccao = Banco.conecta();
        
        if (coneccao != null) {
            String sql = "INSERT INTO curso ";
                sql += "(instituicao_id, curso, carga_horaria) VALUES (?, ?, ?)";

            try {
                PreparedStatement pstmt = coneccao.prepareStatement(sql);

                pstmt.setInt(1, curso.getIdInstituicao());
                pstmt.setString(2, curso.getCurso());
                pstmt.setByte(3, curso.getCargaHoraria());
                
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
    
    public List<CursoBean> listaCurso() {
        List<CursoBean> listaCurso = new ArrayList<>();
        
        try {
            String sql = "SELECT c.id, c.instituicao_id, c.curso, c.carga_horaria, ";
                sql += "i.instituicao FROM curso c INNER JOIN instituicao i ";
                sql += "ON c.instituicao_id = i.id ORDER BY c.curso;";
            
            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                CursoBean curso = new CursoBean();
                
                // Seleciona registros da tabela Curso
                curso.setId(rs.getInt("c.id"));
                curso.setIdInstituicao(rs.getInt("c.instituicao_id"));
                curso.setCurso(rs.getString("c.curso"));
                curso.setCargaHoraria(rs.getByte("c.carga_horaria"));
                curso.setInstituicao(rs.getString("i.instituicao"));
                
                listaCurso.add(curso);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        
        return listaCurso;
    }
    
    public CursoBean pegaCursoId(int id) {
        String sql = "SELECT curso FROM curso WHERE id = ?";
        
        try {
            PreparedStatement pstmt = Banco.conecta().prepareStatement(sql);
            pstmt.setInt(1, id);
            pstmt.execute();
            
            ResultSet rs = pstmt.getResultSet();
            
            if (rs.next()) {
                CursoBean curso = new CursoBean();
                curso.setCurso(rs.getString("curso"));
                
                return curso;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return null;
    }
}
