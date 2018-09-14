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
     * Test of carregaSelectProfessor method, of class ProfessorDAO.
     */
    @Test
    public void testCarregaSelectProfessor() {
        System.out.println("carregaSelectProfessor");
        PessoaBean pessoa = null;
        int expResult = 0;
        int result = ProfessorDAO.carregaSelectProfessor(pessoa);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of nomeProfessor method, of class ProfessorDAO.
     */
    @Test
    public void testNomeProfessor() {
        System.out.println("nomeProfessor");
        ProfessorDAO instance = new ProfessorDAO();
        List<PessoaBean> expResult = null;
        List<PessoaBean> result = instance.nomeProfessor();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
