<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>

<section class="content-header">
    <h1>Instituições <small>Cadastro</small></h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/admin/instituicaoIndex.jsp"><i class="fa fa-home"></i> Instituições</a></li>
        <li class="active">Registrar</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Cadastro de Instituição</h3>
                </div>

                <form action="/registroInstituicao" method="POST" role="form">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="formInstitutionName">Nome da Instituição</label>
                            <input type="text" class="form-control" id="formInstitutionName" 
                                   name="formInstitutionName" placeholder="Nome ou Descrição">
                        </div>
                        <div class="form-group">
                            <label for="formInstitutionAddress">Endereço</label>
                            <input type="text" class="form-control" id="formInstitutionAddress" 
                                   name="formInstitutionAddress"  placeholder="Ex: Rua Roberto de Machado">
                        </div>
                        <div class="form-group">
                            <label for="formInstitutionNumber">Número</label>
                            <input type="text" class="form-control" id="formInstitutionNumber" 
                                   name="formInstitutionNumber" placeholder="Ex: 12345 ou B-02">
                        </div>
                        <div class="form-group">
                            <label for="formInstitutioncep">CEP</label>
                            <input type="text" class="form-control" id="formInstitutioncep" 
                                   name="formInstitutioncep" placeholder="Ex: 12345-678">
                        </div>
                        <div class="form-group">
                            <label for="formInstitutionDistrict">Bairro</label>
                            <input type="text" class="form-control" id="formInstitutionDistrict" 
                                   name="formInstitutionDistrict" placeholder="Ex: Bairro Coronel Fritz III">
                        </div>
                        <div class="form-group">
                            <label for="formInstitutionCity">Cidade</label>
                            <input type="text" class="form-control" id="formInstitutionCity" 
                                   name="formInstitutionCity" placeholder="Ex: Estrada Larga">
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

                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Cadastrar</button>
                        <button type="reset" class="btn btn-primary">Limpar Campos</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<%@include file="/master/rodape.jsp" %>
