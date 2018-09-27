package web.java.classe;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class AvaliacaoBean extends PessoaBean {
    private int id;
    private byte desempenho, carregamento, visual, design, problema, uso,
        conteudo, organizacao;
    private String descricao;

    @Override
    public int getId() {
        return id;
    }

    @Override
    public void setId(int id) {
        this.id = id;
    }

    public byte getDesempenho() {
        return desempenho;
    }

    public void setDesempenho(byte desempenho) {
        this.desempenho = desempenho;
    }

    public byte getCarregamento() {
        return carregamento;
    }

    public void setCarregamento(byte carregamento) {
        this.carregamento = carregamento;
    }

    public byte getVisual() {
        return visual;
    }

    public void setVisual(byte visual) {
        this.visual = visual;
    }

    public byte getDesign() {
        return design;
    }

    public void setDesign(byte design) {
        this.design = design;
    }

    public byte getProblema() {
        return problema;
    }

    public void setProblema(byte problema) {
        this.problema = problema;
    }

    public byte getUso() {
        return uso;
    }

    public void setUso(byte uso) {
        this.uso = uso;
    }

    public byte getConteudo() {
        return conteudo;
    }

    public void setConteudo(byte conteudo) {
        this.conteudo = conteudo;
    }

    public byte getOrganizacao() {
        return organizacao;
    }

    public void setOrganizacao(byte organizacao) {
        this.organizacao = organizacao;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
