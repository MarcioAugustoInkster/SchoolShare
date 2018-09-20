
/**
 *
 * @author Daiana & Marcio
 */
package web.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import web.java.classe.PessoaBean;
import web.java.conexao.Banco;

public class PessoaDAO {

    public static boolean inserePessoa(PessoaBean pessoa) {
        Connection coneccao = Banco.conecta();
        
        if (coneccao != null) {
            String sql = "INSERT INTO pessoa ";
                sql += "(nome, sobrenome, sexo, data_nascimento, email, telefone, login, senha, tipo, ativo) ";
                sql += "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            try {
                PreparedStatement pstmt = coneccao.prepareStatement(sql);

                pstmt.setString(1, pessoa.getNome());
                pstmt.setString(2, pessoa.getSobrenome());
                pstmt.setString(3, String.valueOf(pessoa.getSexo()));
                pstmt.setString(4, pessoa.getDataDeNascimento());
                pstmt.setString(5, pessoa.getEmail());
                pstmt.setString(6, pessoa.getTelefone());
                pstmt.setString(7, pessoa.getLogin());
                pstmt.setString(8, pessoa.getSenha());
                pstmt.setByte(9, pessoa.getTipo());
                pstmt.setBoolean(10, pessoa.isAtivo());

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
    
    public static String carregaListaProfessor() {
        List<PessoaBean> professor = new PessoaDAO().listaProfessor();
        
        StringBuilder sb = new StringBuilder();
        
        sb.append("<table id=\"tabelaProfessor\" class=\"table table-bordered table-hover\">")
        .append("<thead>")
        .append("<tr>")
        .append("<th>Nome Completo</th>")
        .append("<th>Gênero</th>")
        .append("<th>Data Nascimento</th>")
        .append("<th>E-mail</th>")
        .append("<th>Telefone</th>")
        .append("<th>Usuário</th>")
        .append("<th>Ativo</th>")
        .append("<th>Opções</th>")
        .append("</tr>")
        .append("</thead>")
        .append("<tbody>");

        for (PessoaBean listagem : professor) {
            String active = "";
            
            if (listagem.isAtivo() != false) {
                active = "Sim";
            } else {
                active = "Não";
            }
            
            sb.append("<tr>")
            .append("<td>").append(listagem.getNome()).append(" ")
            .append(listagem.getSobrenome()).append("</td>");
            
            String genero = "";
            
            if (listagem.getSexo() == 'M' || listagem.getSexo() == 'm') {
                genero = "Masculino";
            } else if (listagem.getSexo() == 'F' || listagem.getSexo() == 'f') {
                genero = "Feminino";
            }
            
            sb.append("<td>").append(genero).append("</td>")
            .append("<td>").append(listagem.getDataDeNascimento()).append("</td>")
            .append("<td>").append(listagem.getEmail()).append("</td>")
            .append("<td>").append(listagem.getTelefone()).append("</td>")
            .append("<td>").append(listagem.getLogin()).append("</td>")
            .append("<td>").append(active).append("</td>")
            .append("<td><a class=\"btn-custom btn-app-custom\">")
            .append("<i class=\"fa fa-edit\">").append("</i> Edit</a></td>")
            .append("</tr>");
        }

        sb.append("</tbody>")
        .append("</table>");
        
        return sb.toString();
    }
    
    public static String carregaListaAluno() {
        List<PessoaBean> aluno = new PessoaDAO().listaAluno();
        
        StringBuilder sb = new StringBuilder();
        
        sb.append("<table id=\"tabelaAluno\" class=\"table table-bordered table-hover\">")
        .append("<thead>")
        .append("<tr>")
        .append("<th>Nome Completo</th>")
        .append("<th>Gênero</th>")
        .append("<th>Data Nascimento</th>")
        .append("<th>E-mail</th>")
        .append("<th>Telefone</th>")
        .append("<th>Usuário</th>")
        .append("<th>Ativo</th>")
        .append("<th>Opções</th>")
        .append("</tr>")
        .append("</thead>")
        .append("<tbody>");

        for (PessoaBean listagem : aluno) {
            String active = "";
            
            if (listagem.isAtivo() != false) {
                active = "Sim";
            } else {
                active = "Não";
            }
            
            sb.append("<tr>")
            .append("<td>").append(listagem.getNome()).append(" ")
            .append(listagem.getSobrenome()).append("</td>");
            
            String genero = "";
            
            if (listagem.getSexo() == 'M' || listagem.getSexo() == 'm') {
                genero = "Masculino";
            } else if (listagem.getSexo() == 'F' || listagem.getSexo() == 'f') {
                genero = "Feminino";
            }
            
            sb.append("<td>").append(genero).append("</td>")
            .append("<td>").append(listagem.getDataDeNascimento()).append("</td>")
            .append("<td>").append(listagem.getEmail()).append("</td>")
            .append("<td>").append(listagem.getTelefone()).append("</td>")
            .append("<td>").append(listagem.getLogin()).append("</td>")
            .append("<td>").append(active).append("</td>")
            .append("<td><a class=\"btn-custom btn-app-custom\">")
            .append("<i class=\"fa fa-edit\">").append("</i> Edit</a></td>")
            .append("</tr>");
        }

        sb.append("</tbody>")
        .append("</table>");
        
        return sb.toString();
    }
    
    public List<PessoaBean> listaProfessor() {
        List<PessoaBean> listaProfessor = new ArrayList<>();
        
        try {
            String sql = "SELECT nome, sobrenome, sexo, data_nascimento, email, telefone, ";
                sql += "login, tipo, ativo FROM pessoa ";
                sql += "WHERE tipo=2 AND ativo=1 GROUP BY nome";
            
            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                PessoaBean pessoa = new PessoaBean();
                
                pessoa.setNome(rs.getString("nome"));
                pessoa.setSobrenome(rs.getString("sobrenome"));
                pessoa.setSexo(rs.getString("sexo").charAt(0));
                pessoa.setDataDeNascimento(rs.getString("data_nascimento"));
                pessoa.setEmail(rs.getString("email"));
                pessoa.setTelefone(rs.getString("telefone"));
                pessoa.setLogin(rs.getString("login"));
                pessoa.setTipo(rs.getByte("tipo"));
                pessoa.setAtivo(rs.getBoolean("ativo"));
                
                listaProfessor.add(pessoa);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return listaProfessor;
    }
    
    public List<PessoaBean> listaAluno() {
        List<PessoaBean> listaAluno = new ArrayList<>();
        
        try {
            String sql = "SELECT nome, sobrenome, sexo, data_nascimento, email, telefone, ";
                sql += "login, tipo, ativo FROM pessoa ";
                sql += "WHERE tipo=3 AND ativo=1 GROUP BY nome";
            
            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);
            
            ResultSet rs = stmt.getResultSet();
            
            while (rs.next()) {
                PessoaBean pessoa = new PessoaBean();
                
                pessoa.setNome(rs.getString("nome"));
                pessoa.setSobrenome(rs.getString("sobrenome"));
                pessoa.setSexo(rs.getString("sexo").charAt(0));
                pessoa.setDataDeNascimento(rs.getString("data_nascimento"));
                pessoa.setEmail(rs.getString("email"));
                pessoa.setTelefone(rs.getString("telefone"));
                pessoa.setLogin(rs.getString("login"));
                pessoa.setTipo(rs.getByte("tipo"));
                pessoa.setAtivo(rs.getBoolean("ativo"));
                
                listaAluno.add(pessoa);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return listaAluno;
    }
}
