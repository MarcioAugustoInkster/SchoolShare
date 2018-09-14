/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.java.dao;

import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import web.java.classe.PessoaBean;

/**
 *
 * @author Freakazed-PC
 */
public class PessoaDAOTest {
    
    public PessoaDAOTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of salvarPessoa method, of class PessoaDAO.
     */
    @Test
    public void testSalvarPessoa() {
        System.out.println("salvarPessoa");
        PessoaBean pessoa = null;
        PessoaDAO instance = new PessoaDAO();
        instance.salvarPessoa(pessoa);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of inserePessoa method, of class PessoaDAO.
     */
    @Test
    public void testInserePessoa() {
        System.out.println("inserePessoa");
        PessoaBean pessoa = null;
        boolean expResult = false;
        boolean result = PessoaDAO.inserePessoa(pessoa);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of carregaListaProfessor method, of class PessoaDAO.
     */
    @Test
    public void testCarregaListaProfessor() {
        System.out.println("carregaListaProfessor");
        String expResult = "";
        String result = PessoaDAO.carregaListaProfessor();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of listaProfessor method, of class PessoaDAO.
     */
    @Test
    public void testListaProfessor() {
        System.out.println("listaProfessor");
        PessoaDAO instance = new PessoaDAO();
        List<PessoaBean> expResult = null;
        List<PessoaBean> result = instance.listaProfessor();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
