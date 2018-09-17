package web.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import web.java.classe.CursoBean;
import web.java.classe.InstituicaoBean;
import web.java.conexao.Banco;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class CursoDAO {
    private static List<InstituicaoBean> listaInstituicao;
    
    public static boolean insereCurso(CursoBean curso) {
        Connection coneccao = Banco.conecta();
        
        if (coneccao != null) {
            String sql = "INSERT INTO curso ";
                sql += "(instituicao_id, nome) VALUES (?, ?)";

            try {
                PreparedStatement pstmt = coneccao.prepareStatement(sql);

                pstmt.setInt(1, curso.getIdInstituicao());
                pstmt.setString(2, curso.getNome());
                
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
        listaInstituicao = new ArrayList<>();
        
        try {
            String sql = "SELECT c.id, c.instituicao_id, c.nome, i.nome ";
                sql += "FROM curso c LEFT JOIN instituicao i ";
                sql += "ON c.instituicao_id = i.id ";
                sql += "GROUP BY c.nome;";
            
            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                CursoBean curso = new CursoBean();
                InstituicaoBean instituicao = new InstituicaoBean();
                
                // Seleciona registros da tabela Curso
                curso.setId(rs.getInt("c.id"));
                curso.setIdInstituicao(rs.getInt("c.instituicao_id"));
                curso.setNome(rs.getString("c.nome"));
                
                // Seleciona registros da tabela Instituição
                instituicao.setNome(rs.getString("i.nome"));
                
                listaCurso.add(curso);
                listaInstituicao.add(instituicao);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        
        return listaCurso;
    }
    
    public List<InstituicaoBean> listaInstituicao() {
        return listaInstituicao;
    }
}
