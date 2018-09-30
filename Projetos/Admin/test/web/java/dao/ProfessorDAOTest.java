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
public class ProfessorDAOTest {
    
    public ProfessorDAOTest() {
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
     * Test of insereProfessor method, of class ProfessorDAO.
     */
    @Test
    public void testInsereProfessor() {
        System.out.println("insereProfessor");
        int id = 0;
        boolean expResult = false;
        boolean result = ProfessorDAO.insereProfessor(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of listaProfessor method, of class ProfessorDAO.
     */
    @Test
    public void testListaProfessor() {
        System.out.println("listaProfessor");
        ProfessorDAO instance = new ProfessorDAO();
        List<PessoaBean> expResult = null;
        List<PessoaBean> result = instance.listaProfessor();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of listaProfessorPorLogin method, of class ProfessorDAO.
     */
    @Test
    public void testListaProfessorPorLogin() {
        System.out.println("listaProfessorPorLogin");
        String login = "";
        ProfessorDAO instance = new ProfessorDAO();
        PessoaBean expResult = null;
        PessoaBean result = instance.listaProfessorPorLogin(login);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
