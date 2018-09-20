<%@page import="web.java.bean.PessoaBean"%>
<%@page import="web.java.dao.ProfessorDAO"%>
<%@page import="web.java.bean.ProfessorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/master/master.jsp" %>


<% PessoaBean professor = new ProfessorDAO().obterPeloId(2);%>

<section class="content-header">
    <h1>Perfil</h1>
    <ol class="breadcrumb">
        <li><a href="/index.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Professor</li>
    </ol>
</section>

        <div class="box box-primary">
            <div class="box-header with-border">

                    <div class="box-body">
                        <div>
                            <table>
                                <thead>
                                    <tr>
                                        <th><label for="profId">ID:</label></th>
                                        <td><%= professor.getId()%></td>
                                    </tr>
                                    <tr>
                                        <th><label for="profNome">Nome:</label></th>
                                        <td><%= professor.getNome()%>"></td>
                                    </tr>
                                    <tr>
                                        <th><label for="profSobrenome">Sobrenome:</label></th>
                                        <td><%= professor.getSobrenome()%>"></td>
                                    </tr>
                                    <tr>
                                        <th><label for="profSexo">Sexo:</label></th>
                                        <td><%= professor.getSexo()%></td>
                                    </tr>
                                    <tr>
                                        <th><label for="profSenha">Senha</label></th>
                                        <td><input type="password" name="senha" class="form-control" value="" id="professorSenha"></td>
                                    </tr>
                                    <tr>
                                        <th><label for="profRepeteSenha">Repetir Senha</label></th>
                                        <td><input type="password" name="repetirSenha" class="form-control" value="" id="professorRepeteSenha" </td>
                                    </tr>
                                    <tr>
                                        <th><label for="profDataDeNascimento">Data de Nascimento:</label></th>
                                        <td><%= professor.getDataDeNascimento()%></td>
                                    </tr>
                                    <tr>
                                        <th><label for="nivelProf">Nível de Acesso:</label></th>
                                        <td><%= professor.getTipo()%></td>
                                    </tr>
                                    
                                    
                                   
                                </thead>
                            </table>
                                    <button>Alterar</button>
                        </div>
                    </div>
            </div>
        </div>



        <%@include file="/master/rodape.jsp" %>