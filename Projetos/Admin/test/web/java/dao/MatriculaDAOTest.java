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
import web.java.classe.MatriculaBean;

/**
 *
 * @author Freakazed-PC
 */
public class MatriculaDAOTest {
    
    public MatriculaDAOTest() {
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
     * Test of insereMatricula method, of class MatriculaDAO.
     */
    @Test
    public void testInsereMatricula() {
        System.out.println("insereMatricula");
        MatriculaBean matricula = null;
        MatriculaDAO instance = new MatriculaDAO();
        boolean expResult = false;
        boolean result = instance.insereMatricula(matricula);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of listaMatricula method, of class MatriculaDAO.
     */
    @Test
    public void testListaMatricula() {
        System.out.println("listaMatricula");
        MatriculaDAO instance = new MatriculaDAO();
        List<MatriculaBean> expResult = null;
        List<MatriculaBean> result = instance.listaMatricula();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
