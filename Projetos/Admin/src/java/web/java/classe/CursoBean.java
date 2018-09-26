package web.java.classe;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class CursoBean extends InstituicaoBean {
    private int id, idInstituicao;
    private String curso;
    private byte cargaHoraria;

    public byte getCargaHoraria() {
        return cargaHoraria;
    }

    public void setCargaHoraria(byte cargaHoraria) {
        this.cargaHoraria = cargaHoraria;
    }
    
    @Override
    public int getId() {
        return id;
    }

    @Override
    public void setId(int id) {
        this.id = id;
    }

    public int getIdInstituicao() {
        return idInstituicao;
    }

    public void setIdInstituicao(int idInstituicao) {
        this.idInstituicao = idInstituicao;
    }
    
    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }
}
