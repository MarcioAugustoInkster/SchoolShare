
package web.paginas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.bean.AlunoBean;
import web.dao.AlunoDAO;

/**
 *
 * @author Daiana
 */

@WebServlet (urlPatterns = "/aluno/store")
public class AlunoStore extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
       String nome= req.getParameter("nome");
       String sobrenome= req.getParameter("sobrenome");
       String cpf= req.getParameter("cpf");
       String rg= req.getParameter("rg");
       String nomeDaMae=req.getParameter("nome da mae");
       String nomeDoPai =req.getParameter("nome do pai");
       String dataDeNascimento=req.getParameter("data de ascimento");
       String cidadeNascimento =req.getParameter("cidade de nascimento");
       String estadoNascimento =req.getParameter("estado de nascimento");
       String nacionalidade=req.getParameter("nacionalidade");
       String rua=req.getParameter("rua");
       String cep=req.getParameter("cep");
       String bairro=req.getParameter("bairro");
       String complemento=req.getParameter("complemento");
       String cidade=req.getParameter("cidade");
       String estado =req.getParameter("estado");
       String telefone=req.getParameter("telefone");
       String celular=req.getParameter("celular");
       String email=req.getParameter("e-mail");
       String grauEscolariedade=req.getParameter("grauEscolaridade");
       String estudando=req.getParameter("estudando");
       
       
       AlunoBean aluno = new AlunoBean();
       aluno.setNome(nome);
       aluno.setSobrenome(sobrenome);
       aluno.setCpf(cpf);
       aluno.setRg(rg);
       aluno.setNomeDoPai(nomeDoPai);
       aluno.setNomeDaMae(nomeDaMae);
       aluno.setDataDeNascimento(dataDeNascimento);
       aluno.setCidadeNascimento(cidadeNascimento);
       aluno.setEstadoNascimento(estadoNascimento);
       aluno.setNacionalidade(nacionalidade);
       aluno.setCep(cep);
       aluno.setRua(rua);
       aluno.setBairro(bairro);
       aluno.setComplemento(complemento);
       aluno.setCidade(cidade);
       aluno.setEstado(estado);
       aluno.setTelefone(telefone);
       aluno.setCelular(celular);
       aluno.setEmail(email);
       aluno.setGrauEscolaridade(grauEscolariedade);
       aluno.setEstudando(estudando);
       int  codigo = new AlunoDAO().adicionar(aluno);
       if(codigo >0){
           resp.sendRedirect("/cadastro");
       }
       
       
       
       
               
    }
    
    
    
}
