/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.java.dao;

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
     * Test of inserePessoa method, of class PessoaDAO.
     */
    @Test
    public void testInserePessoa() {
        System.out.println("inserePessoa");
        PessoaBean pessoa = null;
        int expResult = 0;
        int result = PessoaDAO.inserePessoa(pessoa);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of retornaUsuarioId method, of class PessoaDAO.
     */
    @Test
    public void testRetornaUsuarioId() {
        System.out.println("retornaUsuarioId");
        String login = "";
        PessoaDAO instance = new PessoaDAO();
        int expResult = 0;
        int result = instance.retornaUsuarioId(login);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of retornaUltimoId method, of class PessoaDAO.
     */
    @Test
    public void testRetornaUltimoId() {
        System.out.println("retornaUltimoId");
        int expResult = 0;
        int result = PessoaDAO.retornaUltimoId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of alteraSenhaUsuario method, of class PessoaDAO.
     */
    @Test
    public void testAlteraSenhaUsuario() {
        System.out.println("alteraSenhaUsuario");
        PessoaBean pessoa = null;
        PessoaDAO instance = new PessoaDAO();
        boolean expResult = false;
        boolean result = instance.alteraSenhaUsuario(pessoa);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
