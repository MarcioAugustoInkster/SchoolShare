package web.java.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import web.java.classe.InstituicaoBean;
import web.java.classe.NotaBean;
import web.java.classe.PessoaBean;
import web.java.conexao.Banco;


/**
 *
 * @author Ricardo Borba
 */
public class NotaDAO {

    public List<NotaBean> obterNota(){
        
        List<NotaBean> Alunos = new ArrayList();
          String sql = "SELECT * FROM notas WHERE = ?)";
        try {
            Statement st = Banco.conecta().createStatement();
            st.execute(sql);
            ResultSet resultset = st.getResultSet();
            while(resultset.next()){
                NotaBean notaAluno = new NotaBean();
                notaAluno.setId(resultset.getInt("id"));
                notaAluno.setNome(resultset.getString("nome"));
                notaAluno.setNota1(resultset.getDouble("nota1"));
                notaAluno.setNota2(resultset.getDouble("nota2"));
                notaAluno.setNota3(resultset.getDouble("nota3"));
                notaAluno.setNota3(resultset.getDouble("nota4"));;
                notaAluno.setFrequencia(resultset.getDouble("frequencia"));
                
                Alunos.add(notaAluno);
             }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return Alunos;
    }
    
    public int adicionarNota(NotaBean notaAluno) {
        String sql = "INSERT INTO notas (nome, nota1, nota2, nota3, nota4, frequencia)VALUES (?,?,?,?,?,?)";
        try {
            PreparedStatement ps = Banco.conecta().prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            int quantidade = 1;
            ps.setString(quantidade++, notaAluno.getNome());
            ps.setDouble(quantidade++, notaAluno.getNota1());
            ps.setDouble(quantidade++, notaAluno.getNota2());
            ps.setDouble(quantidade++, notaAluno.getNota3());
            ps.setDouble(quantidade++, notaAluno.getNota4());
            ps.setDouble(quantidade++, notaAluno.getFrequencia());
            ps.execute();
            ResultSet resultSet = ps.getGeneratedKeys();
            if(resultSet.next()){
                return resultSet.getInt(1);
            }
            } catch (SQLException e){
               e.printStackTrace();     
            } finally {
                Banco.fecharBanco();
            }
        return -1;
    }
    
    public boolean excluirNota(int id) {
        String sql = "DELETE FROM notas WHERE id = ?";
        try {
            PreparedStatement ps = Banco.conecta().prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
        } catch (Exception e) {
            e.printStackTrace();
        }   finally {
            Banco.fecharBanco();
        } return false;
    }
    
    public boolean alterarNota(NotaBean notaAluno){
        String sql = "UPDATE notas SET nome = ?, nota1 = ?, nota2 = ?, nota3 = ?, nota4 = ?, frequencia = ? WHERE id = ?";
        try {
            PreparedStatement ps = Banco.conecta().prepareStatement(sql);
            int quantidade = 1;
            ps.setString(quantidade++, notaAluno.getNome());;
            ps.setDouble(quantidade++, notaAluno.getNota1());
            ps.setDouble(quantidade++, notaAluno.getNota2());
            ps.setDouble(quantidade++, notaAluno.getNota3());
            ps.setDouble(quantidade++, notaAluno.getNota4());
            ps.setDouble(quantidade++, notaAluno.getFrequencia());
            return ps.executeUpdate() == 1;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Banco.fecharBanco();
        }
        return false;
        }
        
    public List<NotaBean> obterTodasNota(){
        List<NotaBean> listaNota = new ArrayList<NotaBean>();
        String sql = "SELECT * FROM notas";
        if(Banco.conecta()!= null){
            try {
                Statement statement = Banco.conecta().createStatement();
                statement.execute(sql);
                ResultSet request = statement.getResultSet();
                while (request.next()){
                   NotaBean notaAluno = new NotaBean();
                    notaAluno.setNome(request.getString("nome"));
                    notaAluno.setNota1(request.getDouble("nota1"));
                    notaAluno.setNota2(request.getDouble("nota2"));
                    notaAluno.setNota3(request.getDouble("nota3"));
                    notaAluno.setNota4(request.getDouble("nota4"));
                    notaAluno.setFrequencia(request.getDouble("frequencia"));
                    listaNota.add(notaAluno);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                Banco.fecharBanco();
            }
        }
            return listaNota;
        }
    public static String carregaListaNota() {
        List<NotaBean> notaAluno = new NotaDAO().obterNota();
        
        StringBuilder sb = new StringBuilder();
        
        sb.append("<table id=\"tabelaNota\" class=\"table table-bordered table-hover\">")
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

        for (NotaBean listagem : notaAluno) {
            sb.append("<tr>")
            .append("<td>").append(listagem.getNome()).append("</td>")
            .append("<td>").append(listagem.getNota1()).append("</td>")
            .append("<td>").append(listagem.getNota2()).append("</td>")
            .append("<td>").append(listagem.getNota3()).append("</td>")
            .append("<td>").append(listagem.getNota4()).append("</td>")
            .append("<td>").append(listagem.getFrequencia()).append("</td>")
            .append("<td><a class=\"btn-custom btn-app-custom\">")
            .append("<i class=\"fa fa-edit\">").append("</i> Edit</a></td>")
            .append("</tr>");
        }

        sb.append("</tbody>")
        .append("</table>");
        
        return sb.toString();
    }
    }
 
