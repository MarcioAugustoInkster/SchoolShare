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
import web.java.classe.NotaBean;

/**
 *
 * @author Freakazed-PC
 */
public class NotaDAOTest {
    
    public NotaDAOTest() {
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
     * Test of obterNota method, of class NotaDAO.
     */
    @Test
    public void testObterNota() {
        System.out.println("obterNota");
        NotaDAO instance = new NotaDAO();
        List<NotaBean> expResult = null;
        List<NotaBean> result = instance.obterNota();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of adicionarNota method, of class NotaDAO.
     */
    @Test
    public void testAdicionarNota() {
        System.out.println("adicionarNota");
        NotaBean notaAluno = null;
        NotaDAO instance = new NotaDAO();
        int expResult = 0;
        int result = instance.adicionarNota(notaAluno);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of excluirNota method, of class NotaDAO.
     */
    @Test
    public void testExcluirNota() {
        System.out.println("excluirNota");
        int id = 0;
        NotaDAO instance = new NotaDAO();
        boolean expResult = false;
        boolean result = instance.excluirNota(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of alterarNota method, of class NotaDAO.
     */
    @Test
    public void testAlterarNota() {
        System.out.println("alterarNota");
        NotaBean notaAluno = null;
        NotaDAO instance = new NotaDAO();
        boolean expResult = false;
        boolean result = instance.alterarNota(notaAluno);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obterTodasNota method, of class NotaDAO.
     */
    @Test
    public void testObterTodasNota() {
        System.out.println("obterTodasNota");
        NotaDAO instance = new NotaDAO();
        List<NotaBean> expResult = null;
        List<NotaBean> result = instance.obterTodasNota();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of carregaListaNota method, of class NotaDAO.
     */
    @Test
    public void testCarregaListaNota() {
        System.out.println("carregaListaNota");
        String expResult = "";
        String result = NotaDAO.carregaListaNota();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
