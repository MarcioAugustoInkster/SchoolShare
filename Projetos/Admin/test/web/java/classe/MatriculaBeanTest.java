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
public class MatriculaBeanTest {
    
    public MatriculaBeanTest() {
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
     * Test of getId method, of class MatriculaBean.
     */
    @Test
    public void testGetId() {
        System.out.println("getId");
        MatriculaBean instance = new MatriculaBean();
        int expResult = 0;
        int result = instance.getId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setId method, of class MatriculaBean.
     */
    @Test
    public void testSetId() {
        System.out.println("setId");
        int id = 0;
        MatriculaBean instance = new MatriculaBean();
        instance.setId(id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPessoaId method, of class MatriculaBean.
     */
    @Test
    public void testGetPessoaId() {
        System.out.println("getPessoaId");
        MatriculaBean instance = new MatriculaBean();
        int expResult = 0;
        int result = instance.getPessoaId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPessoaId method, of class MatriculaBean.
     */
    @Test
    public void testSetPessoaId() {
        System.out.println("setPessoaId");
        int pessoaId = 0;
        MatriculaBean instance = new MatriculaBean();
        instance.setPessoaId(pessoaId);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTurmaId method, of class MatriculaBean.
     */
    @Test
    public void testGetTurmaId() {
        System.out.println("getTurmaId");
        MatriculaBean instance = new MatriculaBean();
        int expResult = 0;
        int result = instance.getTurmaId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setTurmaId method, of class MatriculaBean.
     */
    @Test
    public void testSetTurmaId() {
        System.out.println("setTurmaId");
        int turmaId = 0;
        MatriculaBean instance = new MatriculaBean();
        instance.setTurmaId(turmaId);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getMatricula method, of class MatriculaBean.
     */
    @Test
    public void testGetMatricula() {
        System.out.println("getMatricula");
        MatriculaBean instance = new MatriculaBean();
        String expResult = "";
        String result = instance.getMatricula();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setMatricula method, of class MatriculaBean.
     */
    @Test
    public void testSetMatricula() {
        System.out.println("setMatricula");
        String matricula = "";
        MatriculaBean instance = new MatriculaBean();
        instance.setMatricula(matricula);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDataMatricula method, of class MatriculaBean.
     */
    @Test
    public void testGetDataMatricula() {
        System.out.println("getDataMatricula");
        MatriculaBean instance = new MatriculaBean();
        String expResult = "";
        String result = instance.getDataMatricula();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDataMatricula method, of class MatriculaBean.
     */
    @Test
    public void testSetDataMatricula() {
        System.out.println("setDataMatricula");
        String dataMatricula = "";
        MatriculaBean instance = new MatriculaBean();
        instance.setDataMatricula(dataMatricula);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDataInativo method, of class MatriculaBean.
     */
    @Test
    public void testGetDataInativo() {
        System.out.println("getDataInativo");
        MatriculaBean instance = new MatriculaBean();
        String expResult = "";
        String result = instance.getDataInativo();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDataInativo method, of class MatriculaBean.
     */
    @Test
    public void testSetDataInativo() {
        System.out.println("setDataInativo");
        String dataInativo = "";
        MatriculaBean instance = new MatriculaBean();
        instance.setDataInativo(dataInativo);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPessoa method, of class MatriculaBean.
     */
    @Test
    public void testGetPessoa() {
        System.out.println("getPessoa");
        MatriculaBean instance = new MatriculaBean();
        PessoaBean expResult = null;
        PessoaBean result = instance.getPessoa();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPessoa method, of class MatriculaBean.
     */
    @Test
    public void testSetPessoa() {
        System.out.println("setPessoa");
        PessoaBean pessoa = null;
        MatriculaBean instance = new MatriculaBean();
        instance.setPessoa(pessoa);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTurma method, of class MatriculaBean.
     */
    @Test
    public void testGetTurma() {
        System.out.println("getTurma");
        MatriculaBean instance = new MatriculaBean();
        TurmaBean expResult = null;
        TurmaBean result = instance.getTurma();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setTurma method, of class MatriculaBean.
     */
    @Test
    public void testSetTurma() {
        System.out.println("setTurma");
        TurmaBean turma = null;
        MatriculaBean instance = new MatriculaBean();
        instance.setTurma(turma);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
