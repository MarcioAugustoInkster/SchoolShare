/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.java.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import web.java.bean.InstituicaoBean;
import web.java.conexao.Banco;

/**
 *
 * @author Alunos
 */
public class InstituicaoDAO {

    public List<InstituicaoBean> nomeInstituicao() {
        List<InstituicaoBean> listaInstituicao = new ArrayList<>();

        try {
            String sql = "SELECT id, nome FROm instituicao";

            Statement stmt = Banco.conecta().
            createStatement();
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

            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);

            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                InstituicaoBean instituicao = new InstituicaoBean();

                instituicao.setId(rs.getInt("id"));
                instituicao.setNome(rs.getString("nome"));
                instituicao.setEndereco(rs.getString("endereco"));
                instituicao.setNumero(rs.getString("numero"));
                instituicao.setBairro(rs.getString("cidade"));
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
                    .append("<td>").append(listagem.getEndereco()).append("/td")
                    .append("<td>").append(listagem.getBairro()).append("</td>")
                    .append("<td>").append(listagem.getCidade()).append("</td>")
                    .append("<td>").append(listagem.getEstado()).append("</td>")
                    .append("<td><a class=\"btn-custombtn-app-custom\">")
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
