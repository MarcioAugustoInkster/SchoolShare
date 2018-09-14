package web.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import web.java.classe.InstituicaoBean;
import web.java.conexao.Banco;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class InstituicaoDAO {
    public static boolean insereInstituicao(InstituicaoBean instituicao) {
        Connection coneccao = Banco.obterBanco();
        
        if (coneccao != null) {
            try {
                String sql = "INSERT INTO instituicao (";
                    sql += "nome, endereco, numero, bairro, cidade, estado";
                    sql += ") VALUES (?, ?, ?, ?, ?, ?)";
                
                PreparedStatement pstmt = coneccao.prepareStatement(sql);
                
                pstmt.setString(1, instituicao.getNome());
                pstmt.setString(2, instituicao.getEndereco());
                pstmt.setString(3, instituicao.getNumero());
                pstmt.setString(4, instituicao.getBairro());
                pstmt.setString(5, instituicao.getCidade());
                pstmt.setString(6, instituicao.getEstado());
                
                pstmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                Banco.fecharBanco();
            }
            return true;
        }
        return false;
    }
    
    public List<InstituicaoBean> nomeInstituicao() {
        List<InstituicaoBean> listaInstituicao = new ArrayList<>();
        
        try {
            String sql = "SELECT id, nome FROM instituicao";
            
            Statement stmt = Banco.obterBanco().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                InstituicaoBean instituicao = new InstituicaoBean();
                
                instituicao.setId(rs.getInt("id"));
                instituicao.setNome(rs.getString("nome"));
                
                listaInstituicao.add(instituicao);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return listaInstituicao;
    }
    
    public List<InstituicaoBean> listaInstituicao() {
        List<InstituicaoBean> listaInstituicao = new ArrayList<>();
        
        try {
            String sql = "SELECT id, nome, endereco, numero, bairro, cidade, estado FROM instituicao";
            
            Statement stmt = Banco.obterBanco().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                InstituicaoBean instituicao = new InstituicaoBean();
                
                instituicao.setId(rs.getInt("id"));
                instituicao.setNome(rs.getString("nome"));
                instituicao.setEndereco(rs.getString("endereco"));
                instituicao.setNumero(rs.getString("numero"));
                instituicao.setBairro(rs.getString("bairro"));
                instituicao.setCidade(rs.getString("cidade"));
                instituicao.setEstado(rs.getString("estado"));
                
                listaInstituicao.add(instituicao);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return listaInstituicao;
    }
    
    public static String carregaListaInstituicao() {
        List<InstituicaoBean> instituicao = new InstituicaoDAO().listaInstituicao();
        
        StringBuilder sb = new StringBuilder();
        
        sb.append("<table id=\"tabelaInstituicao\" class=\"table table-bordered table-hover\">")
        .append("<thead>")
        .append("<tr>")
        .append("<th>Instituição</th>")
        .append("<th>Endereço</th>")
        .append("<th>Bairro</th>")
        .append("<th>Cidade</th>")
        .append("<th>Estado</th>")
        .append("<th>Opções</th>")
        .append("</tr>")
        .append("</thead>")
        .append("<tbody>");

        for (InstituicaoBean listagem : instituicao) {
            sb.append("<tr>")
            .append("<td>").append(listagem.getNome()).append("</td>")
            .append("<td>").append(listagem.getEndereco()).append("</td>")
            .append("<td>").append(listagem.getBairro()).append("</td>")
            .append("<td>").append(listagem.getCidade()).append("</td>")
            .append("<td>").append(listagem.getEstado()).append("</td>")
            .append("<td><a class=\"btn-custom btn-app-custom\">")
            .append("<i class=\"fa fa-edit\">").append("</i> Edit</a></td>")
            .append("</tr>");
        }

        sb.append("</tbody>")
        .append("</table>");
        
        return sb.toString();
    }
    
    public static String listaInstituicaoRepo() {
        List<InstituicaoBean> instituicao = new InstituicaoDAO().listaInstituicao();
        
        StringBuilder sb = new StringBuilder();
        
        sb.append("<table id=\"tabelaInstituicao\" class=\"table table-bordered table-hover\">")
        .append("<thead>")
        .append("<tr>")
        .append("<th>#</th>")
        .append("<th>Instituição</th>")
        .append("<th>Endereço</th>")
        .append("<th>Bairro</th>")
        .append("<th>Cidade - Estado</th>")
        .append("<th><i class=\"fa fa-upload\"></li></th>")
        .append("</tr>")
        .append("</thead>")
        .append("<tbody>");

        int counter = 1;
        
        for (InstituicaoBean listagem : instituicao) {
            sb.append("<tr>")
            .append("<td>").append(counter++).append("</td>")
            .append("<td>").append(listagem.getNome()).append("</td>")
            .append("<td>").append(listagem.getEndereco()).append("</td>")
            .append("<td>").append(listagem.getBairro()).append("</td>")
            .append("<td>").append(listagem.getCidade()).append(" - ")
            .append(listagem.getEstado()).append("</td>")
            .append("<td><a class=\"btn-custom btn-app-custom\">")
            .append("<i class=\"fa fa-upload\" onclick=\"onCreateFolder(")
            .append(listagem.getId())
            .append(");\">").append("</i> Criar</a></td>")
            .append("</tr>");
        }

        sb.append("</tbody>")
        .append("</table>");
        
        return sb.toString();
    }
}
