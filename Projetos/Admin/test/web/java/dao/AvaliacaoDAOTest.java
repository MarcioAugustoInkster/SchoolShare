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
import web.java.classe.AvaliacaoBean;

/**
 *
 * @author Freakazed-PC
 */
public class AvaliacaoDAOTest {
    
    public AvaliacaoDAOTest() {
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
     * Test of insereAvaliacao method, of class AvaliacaoDAO.
     */
    @Test
    public void testInsereAvaliacao() {
        System.out.println("insereAvaliacao");
        AvaliacaoBean avaliacao = null;
        String usuario = "";
        AvaliacaoDAO instance = new AvaliacaoDAO();
        boolean expResult = false;
        boolean result = instance.insereAvaliacao(avaliacao, usuario);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
