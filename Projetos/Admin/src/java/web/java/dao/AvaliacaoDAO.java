package web.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import web.java.classe.AvaliacaoBean;
import web.java.classe.PessoaBean;
import web.java.conexao.Banco;

/**
 *
 * @author Freakazed-PC
 */
public class AvaliacaoDAO {
    public boolean insereAvaliacao(AvaliacaoBean avaliacao, String usuario) {
        Connection coneccao = Banco.conecta();

        int pessoaId = new PessoaDAO().retornaUsuarioId(usuario);
        
        if (pessoaId != 0) {
            if (coneccao != null) {
                String sql = "INSERT INTO avaliacao ";
                    sql += "(pessoas_id, p_desempenho, p_carregamento, p_visual, ";
                    sql += "p_design, p_problema, p_uso, p_conteudo, p_organizacao, ";
                    sql += "descricao) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

                try {
                    PreparedStatement pstmt = coneccao.prepareStatement(sql);

                    pstmt.setInt(1, pessoaId);
                    pstmt.setByte(2, avaliacao.getDesempenho());
                    pstmt.setByte(3, avaliacao.getCarregamento());
                    pstmt.setByte(4, avaliacao.getVisual());
                    pstmt.setByte(5, avaliacao.getDesign());
                    pstmt.setByte(6, avaliacao.getProblema());
                    pstmt.setByte(7, avaliacao.getUso());
                    pstmt.setByte(8, avaliacao.getConteudo());
                    pstmt.setByte(9, avaliacao.getOrganizacao());
                    pstmt.setString(10, avaliacao.getDescricao());

                    pstmt.execute();
                    
                    return true;
                } catch (Exception ex) {
                    ex.printStackTrace();
                } finally {
                    Banco.fecharBanco();
                }
            }
        }
        return false;
    }
}
