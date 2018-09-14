package web.java.classe;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class AdminBean extends PessoaBean {
    private int id, idPessoa;

    @Override
    public int getId() {
        return id;
    }

    @Override
    public void setId(int id) {
        this.id = id;
    }

    public int getIdPessoa() {
        return idPessoa;
    }

    public void setIdPessoa(int idPessoa) {
        this.idPessoa = idPessoa;
    }
}
