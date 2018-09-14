package web.java.classe;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author Daiana & Marcio
 */

// @Entity          = Hibernate entenderá que essa entidade será do Banco de Daods
// @Id              = Identificador da Entidade do Banco de Dados
// @GeneratedValue  = Gera um valor para criar a Tebela no Banco através do ID gerado

@Entity
public class PessoaBean implements Serializable {
    @Id
    @GeneratedValue
    private int id;
    private String nome, sobrenome, email, login, senha, dataNascimento, telefone;
    private char sexo;
    private byte tipo;
    private boolean ativo;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getSobrenome() {
        return sobrenome;
    }
    
    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataDeNascimento) {
        this.dataNascimento = dataDeNascimento;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
    }
    
    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
    public byte getTipo() {
        return tipo;
    }
    
    public void setTipo(byte tipo) {
        this.tipo = tipo;
    }

    public boolean isAtivo() {
        return ativo;
    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }
}
