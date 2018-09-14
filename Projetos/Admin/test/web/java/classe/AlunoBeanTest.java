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
public class AlunoBeanTest {
    
    public AlunoBeanTest() {
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
     * Test of getId method, of class AlunoBean.
     */
    @Test
    public void testGetId() {
        System.out.println("getId");
        AlunoBean instance = new AlunoBean();
        int expResult = 0;
        int result = instance.getId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setId method, of class AlunoBean.
     */
    @Test
    public void testSetId() {
        System.out.println("setId");
        int id = 0;
        AlunoBean instance = new AlunoBean();
        instance.setId(id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPessoaId method, of class AlunoBean.
     */
    @Test
    public void testGetPessoaId() {
        System.out.println("getPessoaId");
        AlunoBean instance = new AlunoBean();
        int expResult = 0;
        int result = instance.getPessoaId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPessoaId method, of class AlunoBean.
     */
    @Test
    public void testSetPessoaId() {
        System.out.println("setPessoaId");
        int pessoaId = 0;
        AlunoBean instance = new AlunoBean();
        instance.setPessoaId(pessoaId);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
