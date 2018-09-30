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
public class AlunoDAOTest {
    
    public AlunoDAOTest() {
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
     * Test of insereAluno method, of class AlunoDAO.
     */
    @Test
    public void testInsereAluno() {
        System.out.println("insereAluno");
        int id = 0;
        boolean expResult = false;
        boolean result = AlunoDAO.insereAluno(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of listaAluno method, of class AlunoDAO.
     */
    @Test
    public void testListaAluno() {
        System.out.println("listaAluno");
        AlunoDAO instance = new AlunoDAO();
        List<PessoaBean> expResult = null;
        List<PessoaBean> result = instance.listaAluno();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of listaAlunoPorLogin method, of class AlunoDAO.
     */
    @Test
    public void testListaAlunoPorLogin() {
        System.out.println("listaAlunoPorLogin");
        String login = "";
        AlunoDAO instance = new AlunoDAO();
        PessoaBean expResult = null;
        PessoaBean result = instance.listaAlunoPorLogin(login);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
