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
     * Test of getDataInicio method, of class CursoBean.
     */
    @Test
    public void testGetDataInicio() {
        System.out.println("getDataInicio");
        CursoBean instance = new CursoBean();
        String expResult = "";
        String result = instance.getDataInicio();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDataInicio method, of class CursoBean.
     */
    @Test
    public void testSetDataInicio() {
        System.out.println("setDataInicio");
        String dataInicio = "";
        CursoBean instance = new CursoBean();
        instance.setDataInicio(dataInicio);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDataFinal method, of class CursoBean.
     */
    @Test
    public void testGetDataFinal() {
        System.out.println("getDataFinal");
        CursoBean instance = new CursoBean();
        String expResult = "";
        String result = instance.getDataFinal();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDataFinal method, of class CursoBean.
     */
    @Test
    public void testSetDataFinal() {
        System.out.println("setDataFinal");
        String dataFinal = "";
        CursoBean instance = new CursoBean();
        instance.setDataFinal(dataFinal);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getCargaHoraria method, of class CursoBean.
     */
    @Test
    public void testGetCargaHoraria() {
        System.out.println("getCargaHoraria");
        CursoBean instance = new CursoBean();
        byte expResult = 0;
        byte result = instance.getCargaHoraria();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setCargaHoraria method, of class CursoBean.
     */
    @Test
    public void testSetCargaHoraria() {
        System.out.println("setCargaHoraria");
        byte cargaHoraria = 0;
        CursoBean instance = new CursoBean();
        instance.setCargaHoraria(cargaHoraria);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
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
     * Test of getCurso method, of class CursoBean.
     */
    @Test
    public void testGetCurso() {
        System.out.println("getCurso");
        CursoBean instance = new CursoBean();
        String expResult = "";
        String result = instance.getCurso();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setCurso method, of class CursoBean.
     */
    @Test
    public void testSetCurso() {
        System.out.println("setCurso");
        String curso = "";
        CursoBean instance = new CursoBean();
        instance.setCurso(curso);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
