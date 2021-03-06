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
import web.java.bean.CursoBean;
import web.java.bean.ProfessorBean;
import web.java.bean.TurmaBean;
import web.java.conexao.Banco;

/**
 *
 * @author Alunos
 */
public class TurmaDAO {

    public List<TurmaBean> listaTurma() {
        List<TurmaBean> listaTurma = new ArrayList<>();

        try {
            String sql = "SELECT p.nome, p.sobrenome, c.nome, t.turma, t.data_inicio, ";
            sql += "t.data_final, t.carga_horaria FROM turma t INNER JOIN pessoa p ";
            sql += "ON p.id = t.professor_id INNER JOIN curso c ON c.id = t.curso_id ";
            sql += "ORDER BY t.nome";

            Statement stmt = Banco.conecta().createStatement();
            stmt.execute(sql);

            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                TurmaBean turma = new TurmaBean();
                ProfessorBean professor = new ProfessorBean();
                CursoBean curso = new CursoBean();

                // Seleciona registros da tabela Turma
                turma.setTurma(rs.getString("t.turma"));
                turma.setDataInicio(rs.getString("t.data_inicio"));
                turma.setDataFinal(rs.getString("t.data_final"));
                turma.setCargaHoraria(rs.getShort("t.carga_horaria"));

                // Seleciona registros da tabela Professor
                professor.setNome(rs.getString("p.nome"));
                professor.setSobrenome(rs.getString("p.sobrenome"));
                

                // Seleciona registros da tabela Curso
                curso.setCurso(rs.getString("c.curso"));

                turma.setCurso(curso);
                turma.setProfessor(professor);
                
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
