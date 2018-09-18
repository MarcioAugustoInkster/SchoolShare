/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.java.bean;

/**
 *
 * @author Alan
 */
public class CursoBean  extends PessoaBean{
    
    private int id, idInstituicao;
    public String nome;

    public int getIdInstituicao() {
        return idInstituicao;
    }

    public void setIdInstituicao(int idInstituicao) {
        this.idInstituicao = idInstituicao;
    }
    
    public String nome() {
        return nome;
    }
    
    public void setString(String nome){
        this.nome = nome;
    }
    
    @Override
    public int getId() {
        return id;
    }
    
    @Override
    public void setId(int id) {
        this.id = id;
    }
    
    
}
