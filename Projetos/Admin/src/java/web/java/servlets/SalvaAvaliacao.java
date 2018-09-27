package web.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.java.admin.SessaoAdmin;
import web.java.classe.AvaliacaoBean;
import web.java.classe.PessoaBean;
import web.java.dao.AvaliacaoDAO;
import web.java.dao.PessoaDAO;

/**
 *
 * @author Marcio Augusto Schlosser
 */
@WebServlet(urlPatterns = "/guardaAvaliacao")

public class SalvaAvaliacao extends HttpServlet {
    private PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        
        AvaliacaoBean avaliacao = new AvaliacaoBean();
        
        String usuario = SessaoAdmin.retornaSessao(request);
        
        byte desempenho = Byte.parseByte(request.getParameter("qDesempenho")),
            carregamento = Byte.parseByte(request.getParameter("qCarregamento")),
            visao = Byte.parseByte(request.getParameter("qVisao")),
            falha = Byte.parseByte(request.getParameter("qFalha")),
            problema = Byte.parseByte(request.getParameter("qProblema")),
            facilidade = Byte.parseByte(request.getParameter("qFacilidade")),
            conteudo = Byte.parseByte(request.getParameter("qConteudo")),
            organizacao = Byte.parseByte(request.getParameter("qOrganizacao"));
        String descricao = request.getParameter("campoAvaliacao");
        
        byte[] convDescricao = descricao.getBytes(StandardCharsets.ISO_8859_1);
        descricao = new String(convDescricao, StandardCharsets.UTF_8);
        
        avaliacao.setDesempenho(desempenho);
        avaliacao.setCarregamento(carregamento);
        avaliacao.setVisual(visao);
        avaliacao.setDesign(falha);
        avaliacao.setProblema(problema);
        avaliacao.setUso(facilidade);
        avaliacao.setConteudo(conteudo);
        avaliacao.setOrganizacao(organizacao);
        avaliacao.setDescricao(descricao);
        
        try {
            AvaliacaoDAO armazena = new AvaliacaoDAO();
            
            if (armazena.insereAvaliacao(avaliacao, usuario)) {
                response.sendRedirect("/aluno/aluno.jsp");
            } else {
                out.print("<h2 style=\"color:8b0000;\">Cadastro falhou! Tente novamente ou contacte o Administrador</h2>");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
