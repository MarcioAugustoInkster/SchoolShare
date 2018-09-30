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
import web.java.classe.TurmaBean;

/**
 *
 * @author Freakazed-PC
 */
public class TurmaDAOTest {
    
    public TurmaDAOTest() {
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
     * Test of insereTurma method, of class TurmaDAO.
     */
    @Test
    public void testInsereTurma() {
        System.out.println("insereTurma");
        TurmaBean turma = null;
        boolean expResult = false;
        boolean result = TurmaDAO.insereTurma(turma);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of listaTurma method, of class TurmaDAO.
     */
    @Test
    public void testListaTurma() {
        System.out.println("listaTurma");
        TurmaDAO instance = new TurmaDAO();
        List<TurmaBean> expResult = null;
        List<TurmaBean> result = instance.listaTurma();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
