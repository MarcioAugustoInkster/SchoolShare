package web.java.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import web.java.classe.PessoaBean;
import web.java.conexao.Banco;
import web.java.mapping.Listas;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class AdminDAO {
    public static List<PessoaBean> listaAdministrador() {
        List<PessoaBean> listaAdmin = new ArrayList<>();
        
        try {
            String sql = "SELECT nome, email, login, tipo, ativo FROM pessoa WHERE tipo=1 ";
                sql += "AND ativo=1 GROUP BY nome";
            
            Statement stmt = Banco.obterBanco().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                PessoaBean admin = new PessoaBean();
                
                admin.setNome(rs.getString("nome"));
                admin.setEmail(rs.getString("email"));
                admin.setLogin(rs.getString("login"));
                admin.setTipo(rs.getByte("tipo"));
                admin.setAtivo(rs.getBoolean("ativo"));
                
                listaAdmin.add(admin);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return listaAdmin;
    }
    
    public static String carregaListaAdmin() {
        List<PessoaBean> admin = listaAdministrador();
        
        StringBuilder sb = new StringBuilder();
        
        sb.append("<table id=\"tabelaAdmin\" class=\"table table-bordered table-hover\">")
        .append("<thead>")
        .append("<tr>")
        .append("<th>Administrador</th>")
        .append("<th>E-mail</th>")
        .append("<th>Usuário</th>")
        .append("<th>Tipo</th>")
        .append("<th>Ativo</th>")
        .append("<th>Opções</th>")
        .append("</tr>")
        .append("</thead>")
        .append("<tbody>");

        for (PessoaBean listagem : admin) {
            String active = "";
            
            if (listagem.isAtivo() != false) {
                active = "Sim";
            } else {
                active = "Não";
            }
            
            sb.append("<tr>").append("<td>").append(listagem.getNome()).append(" ")
            .append("<td>").append(listagem.getEmail()).append("</td>")
            .append("<td>").append(listagem.getLogin()).append("</td>");
            
            String tipo = Listas.tipoUsuario(listagem.getTipo());
            sb.append("<td>").append(tipo).append("</td>")
            
            .append("<td>").append(active).append("</td>")
            .append("<td><a class=\"btn-custom btn-app-custom\">")
            .append("<i class=\"fa fa-edit\">").append("</i> Editar</a></td>")
            .append("</tr>");
        }

        sb.append("</tbody>")
        .append("</table>");
        
        return sb.toString();
    }
}
