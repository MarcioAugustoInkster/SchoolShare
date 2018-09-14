/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.java.classe;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Freakazed-PC
 */
public class CursoBeanTest {
    
    public CursoBeanTest() {
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
     * Test of getId method, of class CursoBean.
     */
    @Test
    public void testGetId() {
        System.out.println("getId");
        CursoBean instance = new CursoBean();
        int expResult = 0;
        int result = instance.getId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setId method, of class CursoBean.
     */
    @Test
    public void testSetId() {
        System.out.println("setId");
        int id = 0;
        CursoBean instance = new CursoBean();
        instance.setId(id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getIdInstituicao method, of class CursoBean.
     */
    @Test
    public void testGetIdInstituicao() {
        System.out.println("getIdInstituicao");
        CursoBean instance = new CursoBean();
        int expResult = 0;
        int result = instance.getIdInstituicao();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdInstituicao method, of class CursoBean.
     */
    @Test
    public void testSetIdInstituicao() {
        System.out.println("setIdInstituicao");
        int idInstituicao = 0;
        CursoBean instance = new CursoBean();
        instance.setIdInstituicao(idInstituicao);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getNome method, of class CursoBean.
     */
    @Test
    public void testGetNome() {
        System.out.println("getNome");
        CursoBean instance = new CursoBean();
        String expResult = "";
        String result = instance.getNome();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setNome method, of class CursoBean.
     */
    @Test
    public void testSetNome() {
        System.out.println("setNome");
        String nome = "";
        CursoBean instance = new CursoBean();
        instance.setNome(nome);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
