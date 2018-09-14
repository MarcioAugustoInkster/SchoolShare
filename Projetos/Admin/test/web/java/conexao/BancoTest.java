/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.java.conexao;

import java.sql.Connection;
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
public class BancoTest {
    
    public BancoTest() {
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
     * Test of conecta method, of class Banco.
     */
    @Test
    public void testconecta() {
        System.out.println("conecta");
        Connection expResult = null;
        Connection result = Banco.conecta();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of fecharBanco method, of class Banco.
     */
    @Test
    public void testFecharBanco() {
        System.out.println("fecharBanco");
        Banco.fecharBanco();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of authenticaLogin method, of class Banco.
     */
    @Test
    public void testAuthenticaLogin() {
        System.out.println("authenticaLogin");
        String login = "";
        StringBuilder senha = null;
        boolean expResult = false;
        boolean result = Banco.authenticaLogin(login, senha);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
