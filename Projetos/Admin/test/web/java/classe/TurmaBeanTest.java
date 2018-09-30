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
public class TurmaBeanTest {
    
    public TurmaBeanTest() {
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
     * Test of getCurso method, of class TurmaBean.
     */
    @Test
    public void testGetCurso() {
        System.out.println("getCurso");
        TurmaBean instance = new TurmaBean();
        CursoBean expResult = null;
        CursoBean result = instance.getCurso();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setCurso method, of class TurmaBean.
     */
    @Test
    public void testSetCurso() {
        System.out.println("setCurso");
        CursoBean curso = null;
        TurmaBean instance = new TurmaBean();
        instance.setCurso(curso);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getProfessor method, of class TurmaBean.
     */
    @Test
    public void testGetProfessor() {
        System.out.println("getProfessor");
        TurmaBean instance = new TurmaBean();
        ProfessorBean expResult = null;
        ProfessorBean result = instance.getProfessor();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setProfessor method, of class TurmaBean.
     */
    @Test
    public void testSetProfessor() {
        System.out.println("setProfessor");
        ProfessorBean professor = null;
        TurmaBean instance = new TurmaBean();
        instance.setProfessor(professor);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getId method, of class TurmaBean.
     */
    @Test
    public void testGetId() {
        System.out.println("getId");
        TurmaBean instance = new TurmaBean();
        int expResult = 0;
        int result = instance.getId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setId method, of class TurmaBean.
     */
    @Test
    public void testSetId() {
        System.out.println("setId");
        int id = 0;
        TurmaBean instance = new TurmaBean();
        instance.setId(id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getCursoId method, of class TurmaBean.
     */
    @Test
    public void testGetCursoId() {
        System.out.println("getCursoId");
        TurmaBean instance = new TurmaBean();
        int expResult = 0;
        int result = instance.getCursoId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setCursoId method, of class TurmaBean.
     */
    @Test
    public void testSetCursoId() {
        System.out.println("setCursoId");
        int cursoId = 0;
        TurmaBean instance = new TurmaBean();
        instance.setCursoId(cursoId);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getProfessorId method, of class TurmaBean.
     */
    @Test
    public void testGetProfessorId() {
        System.out.println("getProfessorId");
        TurmaBean instance = new TurmaBean();
        int expResult = 0;
        int result = instance.getProfessorId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setProfessorId method, of class TurmaBean.
     */
    @Test
    public void testSetProfessorId() {
        System.out.println("setProfessorId");
        int professorId = 0;
        TurmaBean instance = new TurmaBean();
        instance.setProfessorId(professorId);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTurma method, of class TurmaBean.
     */
    @Test
    public void testGetTurma() {
        System.out.println("getTurma");
        TurmaBean instance = new TurmaBean();
        String expResult = "";
        String result = instance.getTurma();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setTurma method, of class TurmaBean.
     */
    @Test
    public void testSetTurma() {
        System.out.println("setTurma");
        String turma = "";
        TurmaBean instance = new TurmaBean();
        instance.setTurma(turma);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDataInicio method, of class TurmaBean.
     */
    @Test
    public void testGetDataInicio() {
        System.out.println("getDataInicio");
        TurmaBean instance = new TurmaBean();
        String expResult = "";
        String result = instance.getDataInicio();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDataInicio method, of class TurmaBean.
     */
    @Test
    public void testSetDataInicio() {
        System.out.println("setDataInicio");
        String dataInicio = "";
        TurmaBean instance = new TurmaBean();
        instance.setDataInicio(dataInicio);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDataFinal method, of class TurmaBean.
     */
    @Test
    public void testGetDataFinal() {
        System.out.println("getDataFinal");
        TurmaBean instance = new TurmaBean();
        String expResult = "";
        String result = instance.getDataFinal();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDataFinal method, of class TurmaBean.
     */
    @Test
    public void testSetDataFinal() {
        System.out.println("setDataFinal");
        String dataFinal = "";
        TurmaBean instance = new TurmaBean();
        instance.setDataFinal(dataFinal);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getCargaHoraria method, of class TurmaBean.
     */
    @Test
    public void testGetCargaHoraria() {
        System.out.println("getCargaHoraria");
        TurmaBean instance = new TurmaBean();
        short expResult = 0;
        short result = instance.getCargaHoraria();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setCargaHoraria method, of class TurmaBean.
     */
    @Test
    public void testSetCargaHoraria() {
        System.out.println("setCargaHoraria");
        short cargaHoraria = 0;
        TurmaBean instance = new TurmaBean();
        instance.setCargaHoraria(cargaHoraria);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
