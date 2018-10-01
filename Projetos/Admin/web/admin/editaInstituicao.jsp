<%-- 
    Document   : editaInstituicao
    Created on : 30/09/2018, 22:25:08
    Author     : Freakazed-PC
--%>

<%@page import="java.util.List"%>
<%@page import="web.java.dao.InstituicaoDAO"%>
<%@page import="web.java.classe.InstituicaoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Instituições <small>Edição</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/instituicaoIndex.jsp"><i class="fa fa-home"></i> Instituições</a></li>
        <li class="active">Editar</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Alteração de Registro Instituição</h3>
                </div>

                <form action="/alteraInstituicao" method="POST" role="form">
                    <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        List<InstituicaoBean> instituicao = new InstituicaoDAO().listaInstituicaoPorId(id);
                        
                        for (InstituicaoBean lista : instituicao) {
                    %>
                    <div class="box-body">
                        <input type="hidden" name="formInstitutionId" value="<%=lista.getId()%>">
                        <div class="form-group">
                            <label for="formInstitutionName">Nome da Instituição</label>
                            <input type="text" class="form-control" id="formInstitutionName" 
                                   name="formInstitutionName" placeholder="Nome ou Descrição"
                                   value="<%=lista.getInstituicao() %>">
                        </div>
                        <div class="form-group">
                            <label for="formInstitutionAddress">Endereço</label>
                            <input type="text" class="form-control" id="formInstitutionAddress" 
                                   name="formInstitutionAddress"  placeholder="Ex: Rua Roberto de Machado"
                                   value="<%=lista.getEndereco()%>">
                        </div>
                        <div class="form-group">
                            <label for="formInstitutionNumber">Número</label>
                            <input type="text" class="form-control" id="formInstitutionNumber" 
                                   name="formInstitutionNumber" placeholder="Ex: 12345 ou B-02"
                                   value="<%=lista.getNumero()%>">
                        </div>
                        <div class="form-group">
                            <label for="formInstitutioncep">CEP</label>
                            <input type="text" class="form-control" id="formInstitutioncep" 
                                   name="formInstitutioncep" placeholder="Ex: 12345-678"
                                   value="<%=lista.getCep()%>">
                        </div>
                        <div class="form-group">
                            <label for="formInstitutionDistrict">Bairro</label>
                            <input type="text" class="form-control" id="formInstitutionDistrict" 
                                   name="formInstitutionDistrict" placeholder="Ex: Bairro Coronel Fritz III"
                                   value="<%=lista.getBairro()%>">
                        </div>
                        <div class="form-group">
                            <label for="formInstitutionCity">Cidade</label>
                            <input type="text" class="form-control" id="formInstitutionCity" 
                                   name="formInstitutionCity" placeholder="Ex: Estrada Larga"
                                   value="<%=lista.getCidade()%>">
                        </div>
                        <div class="form-group">
                            <label for="formInstitutionState">Estado</label>
                            <select id="formInstitutionState" name="formInstitutionState" class="form-control">
                                <option value="AC">Acre</option>
                                <option value="AL">Alagoas</option>
                                <option value="AP">Amapá</option>
                                <option value="AM">Amazonas</option>
                                <option value="BA">Bahia</option>
                                <option value="CE">Ceará</option>
                                <option value="DF">Distrito Federal</option>
                                <option value="ES">Espírito Santo</option>
                                <option value="GO">Goiás</option>
                                <option value="MA">Maranhão</option>
                                <option value="MT">Mato Grosso</option>
                                <option value="MS">Mato Grosso do Sul</option>
                                <option value="MG">Minas Gerais</option>
                                <option value="PA">Pará</option>
                                <option value="PB">Paraíba</option>
                                <option value="PR">Paraná</option>
                                <option value="PE">Pernambuco</option>
                                <option value="PI">Piauí</option>
                                <option value="RJ">Rio de Janeiro</option>
                                <option value="RN">Rio Grande do Norte</option>
                                <option value="RS">Rio Grande do Sul</option>
                                <option value="RO">Rondônia</option>
                                <option value="RR">Roraima</option>
                                <option value="SC">Santa Catarina</option>
                                <option value="SP">São Paulo</option>
                                <option value="SE">Sergipe</option>
                                <option value="TO">Tocantins</option>
                            </select>
                        </div>
                    </div>
                    <%
                    }
                    %>

                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Confirmar</button>
                        <button type="reset" class="btn btn-primary">Limpar Campos</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
