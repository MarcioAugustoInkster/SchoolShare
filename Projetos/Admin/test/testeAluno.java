/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import org.junit.Test;
import static org.junit.Assert.*;
import web.java.classe.AlunoBean;
import web.java.conexao.Banco;
import web.java.dao.AlunoDAO;

/**
 *
 * @author PC
 */
public class testeAluno{
    
    public void inserir(){
        Banco.truncate();

        Aluno e = new Aluno();
        e.setNomeCompleto("aa");
        e.setGenero("aa");
        e.setDataDeNascimento("00/00/0000");
        e.setEmail("aaa");
        e.setTelefone("00000-0000");
        e.setLogin("aaaa");
        
        
        int cod = AlunoDAO.add(e);
        e.setId(cod);
        
        assertEquals(cod, 1);
        validarIgual(e, AlunoDAO.getById(cod));
    }
    
    @Test
    public void excluir(){
        Conexao.truncate();
        
        Aluno e = new Aluno();
        e.setNome("aa");
        e.setGenero("aa");
        e.setDataDeNascimento("00/00/0000");
        e.setEmail("aaa");
        e.setTelefone("00000-0000");
        e.setLogin("aaaa");
        
        
        int cod = AlunoDAO.add(e);
        AlunoDAO.delete(cod);
        
        assertNull(AlunoDAO.getById(cod));
    }
    
    @Test
    public void alterar(){
        Banco.truncate();
        
        Aluno e = new Aluno();
        e.setNome("aa");
        e.setGenero("aa");
        e.setDataDeNascimento("00/00/0000");
        e.setEmail("aaa");
        e.setTelefone("00000-0000");
        e.setLogin("aaaa");
        
        
        
        int cod = AlunoDAO.add(e);
        e.setId(cod);
        e.setNome("bb");
        e.setGenero("bb");
        e.setDataDeNascimento("00/00/0000");
        e.setEmail("bbb");
        e.setTelefone("00000-0000");
        e.setLogin("bbb");
        
        
        AlunoDAO.edit(e);
        
        Aluno dps = AlunoDAO.getById(cod);
        validarIgual(e, dps);
    }
    
    @Test
    public void buscarPorId(){
        Conexao.truncate();
        
        Aluno e = new Aluno();
        e.setNome("aa");
        e.setGenero("aa");
        e.setDataDeNascimento("00/00/0000");
        e.setEmail("aaa");
        e.setTelefone("00000-0000");
        e.setLogin("aaaa");
        
        int cod = AlunoDAO.add(e);
        e.setId(cod);
        
       Aluno e2 = AlunoDAO.getById(cod);
        validarIgual(e, e2);
    }
    
    public void validarIgual(Aluno e1, Aluno e2){
        assertEquals(e1.getId(), e2.getId());
        assertEquals(e1.getNome(), e2.getNome());
        assertEquals(el.getGenero(), e);
    }
    
}