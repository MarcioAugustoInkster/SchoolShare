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
public class ProfessorBeanTest {
    
    public ProfessorBeanTest() {
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
     * Test of getId method, of class ProfessorBean.
     */
    @Test
    public void testGetId() {
        System.out.println("getId");
        ProfessorBean instance = new ProfessorBean();
        int expResult = 0;
        int result = instance.getId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setId method, of class ProfessorBean.
     */
    @Test
    public void testSetId() {
        System.out.println("setId");
        int id = 0;
        ProfessorBean instance = new ProfessorBean();
        instance.setId(id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getIdPessoa method, of class ProfessorBean.
     */
    @Test
    public void testGetIdPessoa() {
        System.out.println("getIdPessoa");
        ProfessorBean instance = new ProfessorBean();
        int expResult = 0;
        int result = instance.getIdPessoa();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setIdPessoa method, of class ProfessorBean.
     */
    @Test
    public void testSetIdPessoa() {
        System.out.println("setIdPessoa");
        int idPessoa = 0;
        ProfessorBean instance = new ProfessorBean();
        instance.setIdPessoa(idPessoa);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
