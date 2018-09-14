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
public class PessoaBeanTest {
    
    public PessoaBeanTest() {
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
     * Test of getId method, of class PessoaBean.
     */
    @Test
    public void testGetId() {
        System.out.println("getId");
        PessoaBean instance = new PessoaBean();
        int expResult = 0;
        int result = instance.getId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setId method, of class PessoaBean.
     */
    @Test
    public void testSetId() {
        System.out.println("setId");
        int id = 0;
        PessoaBean instance = new PessoaBean();
        instance.setId(id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getNome method, of class PessoaBean.
     */
    @Test
    public void testGetNome() {
        System.out.println("getNome");
        PessoaBean instance = new PessoaBean();
        String expResult = "";
        String result = instance.getNome();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setNome method, of class PessoaBean.
     */
    @Test
    public void testSetNome() {
        System.out.println("setNome");
        String nome = "";
        PessoaBean instance = new PessoaBean();
        instance.setNome(nome);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getSobrenome method, of class PessoaBean.
     */
    @Test
    public void testGetSobrenome() {
        System.out.println("getSobrenome");
        PessoaBean instance = new PessoaBean();
        String expResult = "";
        String result = instance.getSobrenome();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setSobrenome method, of class PessoaBean.
     */
    @Test
    public void testSetSobrenome() {
        System.out.println("setSobrenome");
        String sobrenome = "";
        PessoaBean instance = new PessoaBean();
        instance.setSobrenome(sobrenome);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getEmail method, of class PessoaBean.
     */
    @Test
    public void testGetEmail() {
        System.out.println("getEmail");
        PessoaBean instance = new PessoaBean();
        String expResult = "";
        String result = instance.getEmail();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setEmail method, of class PessoaBean.
     */
    @Test
    public void testSetEmail() {
        System.out.println("setEmail");
        String email = "";
        PessoaBean instance = new PessoaBean();
        instance.setEmail(email);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getLogin method, of class PessoaBean.
     */
    @Test
    public void testGetLogin() {
        System.out.println("getLogin");
        PessoaBean instance = new PessoaBean();
        String expResult = "";
        String result = instance.getLogin();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setLogin method, of class PessoaBean.
     */
    @Test
    public void testSetLogin() {
        System.out.println("setLogin");
        String login = "";
        PessoaBean instance = new PessoaBean();
        instance.setLogin(login);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getSenha method, of class PessoaBean.
     */
    @Test
    public void testGetSenha() {
        System.out.println("getSenha");
        PessoaBean instance = new PessoaBean();
        String expResult = "";
        String result = instance.getSenha();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setSenha method, of class PessoaBean.
     */
    @Test
    public void testSetSenha() {
        System.out.println("setSenha");
        String senha = "";
        PessoaBean instance = new PessoaBean();
        instance.setSenha(senha);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDataNascimento method, of class PessoaBean.
     */
    @Test
    public void testGetDataNascimento() {
        System.out.println("getDataNascimento");
        PessoaBean instance = new PessoaBean();
        String expResult = "";
        String result = instance.getDataNascimento();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDataNascimento method, of class PessoaBean.
     */
    @Test
    public void testSetDataNascimento() {
        System.out.println("setDataNascimento");
        String dataDeNascimento = "";
        PessoaBean instance = new PessoaBean();
        instance.setDataNascimento(dataDeNascimento);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getSexo method, of class PessoaBean.
     */
    @Test
    public void testGetSexo() {
        System.out.println("getSexo");
        PessoaBean instance = new PessoaBean();
        char expResult = ' ';
        char result = instance.getSexo();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setSexo method, of class PessoaBean.
     */
    @Test
    public void testSetSexo() {
        System.out.println("setSexo");
        char sexo = ' ';
        PessoaBean instance = new PessoaBean();
        instance.setSexo(sexo);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTelefone method, of class PessoaBean.
     */
    @Test
    public void testGetTelefone() {
        System.out.println("getTelefone");
        PessoaBean instance = new PessoaBean();
        String expResult = "";
        String result = instance.getTelefone();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setTelefone method, of class PessoaBean.
     */
    @Test
    public void testSetTelefone() {
        System.out.println("setTelefone");
        String telefone = "";
        PessoaBean instance = new PessoaBean();
        instance.setTelefone(telefone);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTipo method, of class PessoaBean.
     */
    @Test
    public void testGetTipo() {
        System.out.println("getTipo");
        PessoaBean instance = new PessoaBean();
        byte expResult = 0;
        byte result = instance.getTipo();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setTipo method, of class PessoaBean.
     */
    @Test
    public void testSetTipo() {
        System.out.println("setTipo");
        byte tipo = 0;
        PessoaBean instance = new PessoaBean();
        instance.setTipo(tipo);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of isAtivo method, of class PessoaBean.
     */
    @Test
    public void testIsAtivo() {
        System.out.println("isAtivo");
        PessoaBean instance = new PessoaBean();
        boolean expResult = false;
        boolean result = instance.isAtivo();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setAtivo method, of class PessoaBean.
     */
    @Test
    public void testSetAtivo() {
        System.out.println("setAtivo");
        boolean ativo = false;
        PessoaBean instance = new PessoaBean();
        instance.setAtivo(ativo);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
