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
public class AdminDAOTest {
    
    public AdminDAOTest() {
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
     * Test of listaAdministrador method, of class AdminDAO.
     */
    @Test
    public void testListaAdministrador() {
        System.out.println("listaAdministrador");
        List<PessoaBean> expResult = null;
        List<PessoaBean> result = AdminDAO.listaAdministrador();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of carregaListaAdmin method, of class AdminDAO.
     */
    @Test
    public void testCarregaListaAdmin() {
        System.out.println("carregaListaAdmin");
        String expResult = "";
        String result = AdminDAO.carregaListaAdmin();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
