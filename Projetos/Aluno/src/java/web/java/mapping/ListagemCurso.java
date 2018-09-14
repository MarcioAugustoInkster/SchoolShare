package web.java.mapping;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Freakazed-PC
 */
public class ListagemCurso {
    private static List<String> arrayCurso;
    
    public ListagemCurso() {
        //preencheListaCursos();
    }
    
    public static void preencheListaCursos() {
        arrayCurso = new ArrayList<>();
        
        arrayCurso.add("Preparatório para certificação ITIL");
        arrayCurso.add("Lógica de Programação");
        arrayCurso.add("Microsoft Excel Básico");
        arrayCurso.add("Desenvolvendo em C#");
        arrayCurso.add("Formação Linux");
        arrayCurso.add("Desenvolvedor C#");
        arrayCurso.add("Desenvolvedor Java");
        arrayCurso.add("Microsoft Excel Avançado");
        arrayCurso.add("Gerenciamento de Projetos com Scrum");
        arrayCurso.add("Desenvolvimento Ágil em Python");
        arrayCurso.add("Desenvolvendo em PHP");
        arrayCurso.add("Oracle - Preparatório Para Certificação OCA");
        arrayCurso.add("Microsoft Excel Intermediário");
        arrayCurso.add("JavaScript e Jquery");
        arrayCurso.add("Preparatório ITIL V3");
        arrayCurso.add("Gerenciamento de Projetos - Fundamentos");
        arrayCurso.add("Formação Pacote Office");
        arrayCurso.add("Desenvolvendo em Java");
        arrayCurso.add("Java - Web");
        arrayCurso.add("MySQL");
        
        //return arrayCurso;
    }
    
    public static void preencheListaTurmas() {
        
    }
    
    public static void preencheListaProfessores() {
        
    }
    
    public static void preencheListaAlunos() {
        
    }
    
    public static String carregaListaCursos() {
        preencheListaCursos();
        
        StringBuilder sb = new StringBuilder();
        
        sb.append("<ul>");
        
        for (String lista : arrayCurso) {
            sb.append("<li>").append("<a href=\"")
            .append(lista)
            .append("\">")
            .append(lista)
            .append("</a>").append("</li>");
        }
        
        sb.append("</ul>");
        
        return sb.toString();
    }
}
