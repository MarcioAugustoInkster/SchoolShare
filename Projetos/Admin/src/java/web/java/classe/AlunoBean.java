
package web.java.classe;


/**
 *
 * @author Daiana
 */
public class AlunoBean{
    
    private int id; 
    private String codigoDeMatricula, grauEscolaridade,
            escola, estudando;
    private byte frequencia;
    private float nota;

    public String getEscola() {
        return escola;
    }

    public void setEscola(String escola) {
        this.escola = escola;
    }

    public String getEstudando() {
        return estudando;
    }

    public void setEstudando(String estudando) {
        this.estudando = estudando;
    }

    public String getGrauEscolaridade() {
        return grauEscolaridade;
    }

    public void setGrauEscolaridade(String grauEscolaridade) {
        this.grauEscolaridade = grauEscolaridade;
    }
    
    public byte getFrequencia() {
        return frequencia;
    }

    public void setFrequencia(byte frequencia) {
        this.frequencia = frequencia;
    }

    public float getNota() {
        return nota;
    }

    public void setNota(float nota) {
        this.nota = nota;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public String getCodigoDeMatricula() {
        return codigoDeMatricula;
    }

    public void setCodigoDeMatricula(String codigoDeMatricula) {
        this.codigoDeMatricula = codigoDeMatricula;
    }

    }

    
  
