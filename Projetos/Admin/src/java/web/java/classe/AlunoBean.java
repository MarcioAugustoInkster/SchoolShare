package web.java.classe;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class AlunoBean extends PessoaBean {
    private int id, pessoaId;

    @Override
    public int getId() {
        return id;
    }

    @Override
    public void setId(int id) {
        this.id = id;
    }

    public int getPessoaId() {
        return pessoaId;
    }

    public void setPessoaId(int pessoaId) {
        this.pessoaId = pessoaId;
    }
}
