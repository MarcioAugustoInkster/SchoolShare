<%-- 
    Document   : avaliacao
    Created on : 26/09/2018, 22:45:21
    Author     : Freakazed-PC
--%>

<%@page import="web.java.mapping.DataFormatter"%>
<%@page import="java.util.List"%>
<%@page import="web.java.dao.PessoaDAO"%>
<%@page import="web.java.classe.PessoaBean"%>
<%@page import="web.java.admin.SessaoAdmin"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Tab Avaliação -->

<div class="form-group">
    <div class="form-group">
        <h2>Avalie nosso sistema diariamente e nos ajude a melhorá-lo</h2>
    </div>

    <form action="/guardaAvaliacao" method="POST" name="formAvaliacao" id="formAvaliacao">
        <table class="table table-striped tabela-avaliacao">
            <thead>
                <tr>
                    <th class="col-md-4"></th>
                    <th class="col-md-2">Quase Nada</th>
                    <th class="col-md-2">Não</th>
                    <th class="col-md-2">Um pouco</th>
                    <th class="col-md-2">Sim</th>
                    <th class="col-md-2">Bastante</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <div>O desempenho do Sistema é bom?</div>
                    </td>
                    <td><input type="radio" class="radio-inline" id="radioDesempenho1" name="qDesempenho" value="1"></td>
                    <td><input type="radio" class="radio-inline" id="radioDesempenho2" name="qDesempenho" value="2"></td> 
                    <td><input type="radio" class="radio-inline" id="radioDesempenho3" name="qDesempenho" value="3"></td> 
                    <td><input type="radio" class="radio-inline" id="radioDesempenho4" name="qDesempenho" value="4"></td>
                    <td><input type="radio" class="radio-inline" id="radioDesempenho5" name="qDesempenho" value="5"></td>
                </tr>
                <tr>
                    <td>
                        <div>O Tempo de carregamento é razoável?</div>
                    </td>
                    <td><input type="radio" class="radio-inline" id="radioCarregamento1" name="qCarregamento" value="1"></td>
                    <td><input type="radio" class="radio-inline" id="radioCarregamento2" name="qCarregamento" value="2"></td> 
                    <td><input type="radio" class="radio-inline" id="radioCarregamento3" name="qCarregamento" value="3"></td> 
                    <td><input type="radio" class="radio-inline" id="radioCarregamento4" name="qCarregamento" value="4"></td>
                    <td><input type="radio" class="radio-inline" id="radioCarregamento5" name="qCarregamento" value="5"></td>
                </tr>
                <tr>
                    <td>
                        <div>O desempenho Visual cansa a visão?</div>
                    </td>
                    <td><input type="radio" class="radio-inline" id="radioVisao1" name="qVisao" value="1"></td>
                    <td><input type="radio" class="radio-inline" id="radioVisao2" name="qVisao" value="2"></td> 
                    <td><input type="radio" class="radio-inline" id="radioVisao3" name="qVisao" value="3"></td> 
                    <td><input type="radio" class="radio-inline" id="radioVisao4" name="qVisao" value="4"></td>
                    <td><input type="radio" class="radio-inline" id="radioVisao5" name="qVisao" value="5"></td>
                </tr>
                <tr>
                    <td>
                        <div>O Design do sistema é apropriado para o público alvo?</div>
                    </td>
                    <td><input type="radio" class="radio-inline" id="radioFalha1" name="qFalha" value="1"></td>
                    <td><input type="radio" class="radio-inline" id="radioFalha2" name="qFalha" value="2"></td> 
                    <td><input type="radio" class="radio-inline" id="radioFalha3" name="qFalha" value="3"></td> 
                    <td><input type="radio" class="radio-inline" id="radioFalha4" name="qFalha" value="4"></td>
                    <td><input type="radio" class="radio-inline" id="radioFalha5" name="qFalha" value="5"></td>
                </tr>
                <tr>
                    <td>
                        <div>Ocorreu problemas que impediram você de continuar?</div>
                    </td>
                    <td><input type="radio" class="radio-inline" id="radioProblema1" name="qProblema" value="1"></td>
                    <td><input type="radio" class="radio-inline" id="radioProblema2" name="qProblema" value="2"></td> 
                    <td><input type="radio" class="radio-inline" id="radioProblema3" name="qProblema" value="3"></td> 
                    <td><input type="radio" class="radio-inline" id="radioProblema4" name="qProblema" value="4"></td>
                    <td><input type="radio" class="radio-inline" id="radioProblema5" name="qProblema" value="5"></td>
                </tr>
                <tr>
                    <td>
                        <div>O sistema é fácil de usar?</div>
                    </td>
                    <td><input type="radio" class="radio-inline" id="radioFacilidade1" name="qFacilidade" value="1"></td>
                    <td><input type="radio" class="radio-inline" id="radioFacilidade2" name="qFacilidade" value="2"></td> 
                    <td><input type="radio" class="radio-inline" id="radioFacilidade3" name="qFacilidade" value="3"></td> 
                    <td><input type="radio" class="radio-inline" id="radioFacilidade4" name="qFacilidade" value="4"></td>
                    <td><input type="radio" class="radio-inline" id="radioFacilidade5" name="qFacilidade" value="5"></td>
                </tr>
                <tr>
                    <td>
                        <div>Você consegue encontrar conteúdos especificos?</div>
                    </td>
                    <td><input type="radio" class="radio-inline" id="radioConteudo1" name="qConteudo" value="1"></td>
                    <td><input type="radio" class="radio-inline" id="radioConteudo2" name="qConteudo" value="2"></td> 
                    <td><input type="radio" class="radio-inline" id="radioConteudo3" name="qConteudo" value="3"></td> 
                    <td><input type="radio" class="radio-inline" id="radioConteudo4" name="qConteudo" value="4"></td>
                    <td><input type="radio" class="radio-inline" id="radioConteudo5" name="qConteudo" value="5"></td>
                </tr>
                <tr>
                    <td>
                        <div>O Conteúdo do sistema apresenta estar bem organizado?</div>
                    </td>
                    <td><input type="radio" class="radio-inline" id="radioOrganizacao1" name="qOrganizacao" value="1"></td>
                    <td><input type="radio" class="radio-inline" id="radioOrganizacao2" name="qOrganizacao" value="2"></td> 
                    <td><input type="radio" class="radio-inline" id="radioOrganizacao3" name="qOrganizacao" value="3"></td> 
                    <td><input type="radio" class="radio-inline" id="radioOrganizacao4" name="qOrganizacao" value="4"></td>
                    <td><input type="radio" class="radio-inline" id="radioOrganizacao5" name="qOrganizacao" value="5"></td>
                </tr>

                <tr>
                    <td>
                        <div>Sugestões, Críticas ou Elogios</div>
                    </td>
                    <td colspan="5">
                        <textarea class="textAvaliacao form-control" id="campoAvaliacao" name="campoAvaliacao"></textarea>
                    </td>
                </tr>
            </tbody>
        </table>
        
        <div class="box-footer">
            <button type="submit" class="btn btn-primary">Enviar</button>
        </div>
    </form>
</div>

<div class="form-group">

</div>