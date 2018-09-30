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
import web.java.classe.CursoBean;

/**
 *
 * @author Freakazed-PC
 */
public class CursoDAOTest {
    
    public CursoDAOTest() {
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
     * Test of insereCurso method, of class CursoDAO.
     */
    @Test
    public void testInsereCurso() {
        System.out.println("insereCurso");
        CursoBean curso = null;
        boolean expResult = false;
        boolean result = CursoDAO.insereCurso(curso);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of listaCurso method, of class CursoDAO.
     */
    @Test
    public void testListaCurso() {
        System.out.println("listaCurso");
        CursoDAO instance = new CursoDAO();
        List<CursoBean> expResult = null;
        List<CursoBean> result = instance.listaCurso();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of pegaCursoId method, of class CursoDAO.
     */
    @Test
    public void testPegaCursoId() {
        System.out.println("pegaCursoId");
        int id = 0;
        CursoDAO instance = new CursoDAO();
        CursoBean expResult = null;
        CursoBean result = instance.pegaCursoId(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
