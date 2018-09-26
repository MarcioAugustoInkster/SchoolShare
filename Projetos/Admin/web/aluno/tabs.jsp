<div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#noticias" data-toggle="tab">Not�cias</a></li>
                <li><a href="#calendario" data-toggle="tab">Calend�rio</a></li>
                <li><a href="#arquivos" data-toggle="tab">Arquivos</a></li>
                <li><a href="#avaliacao" data-toggle="tab">Avalia��o</a></li>
                <li><a href="#notas" data-toggle="tab">Provas</a></li>
                <li><a href="#grade" data-toggle="tab">Grade Escolar</a></li>
                <li><a href="#perfil" data-toggle="tab">Meu Perfil</a></li>
            </ul>
            <div class="tab-content">
                <!-- Tab Noticias -->
                <div class="active tab-pane" id="noticias">
                    <div class="post">

                    </div>

                    <div class="post clearfix">

                    </div>
                </div>

                <!-- Tab Calend�rio -->
                <div class="tab-pane" id="calendario">
                    <div class="post">
                        <h4>Selecione uma Institui��o e crie um Curso</h4>

                        <div class="input-group input-group-sm">
                            <div class="form-group">

                            </div>
                        </div>
                    </div>

                    <div class="post clearfix">

                    </div>
                </div>

                <!-- Tab Arquivos -->
                <div class="tab-pane" id="arquivos">
                    <div class="post">
                        <form action="${pageContext.request.contextPath}/fileupload" method="POST" 
                              enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="fileName">Nome do Arquivo a baixar</label>
                                <input type="text" class="form-control" id="fileName" name="file_name" placeholder="Nome do Arquivo">
                                <input type="file" id="inputFile" name="arquivo">
                                <button type="submit">Upload</button>
                                <p class="help-block">Exemplo: .doc, .pdf, .txt, etc</p>
                            </div>
                        </form>

                        <%
                            String file_name = (String) request.getParameter("fileName");

                            if (file_name != null) {
                                out.println("<span class=\"span-file-result-done\">Arquivo \"<b>");
                                out.println(file_name + "</b>\" foi adicionado ao diret�rio!</span>");
                            } else {
                                out.println("<span class=\"span-file-result-error\">Arquivo \"<b>");
                                out.println(file_name + "</b>\" n�o p�de ser baixado no diret�rio</span>");
                            }
                        %>

                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Op��es de Arquivos</h3>
                                </div>
                                <div class="box-body">
                                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-default">
                                        Procurar Arquivo
                                    </button>
                                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-info">
                                        Enviar para um Colega
                                    </button>
                                </div>
                            </div>
                        </div>

                        <div class="listaArquivo">
                            <%
                                out.print(ListagemArquivos.carregaTabelaArquivo());
                            %>
                        </div>
                    </div>

                    <div class="post clearfix">

                    </div>
                </div>

                <!-- Tab Avalia��o -->
                <div class="tab-pane" id="avaliacao">
                    <div class="post clearfix">
                        <h4>Pesquise uma Turma na lista</h4>

                        <div class="form-group">
                            <table class="table table-striped tabela-avaliacao">
                                <thead>
                                    <tr>
                                        <td class="col-md-4"></td>
                                        <th class="col-md-2"> Muito bom </th>
                                        <th class="col-md-2">  Bom </th>
                                        <th class="col-md-2"> Ruim </th>
                                        <th class="col-md-2">Muito ruim </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div>Como foi a aula de hoje?</div>
                                        </td>
                                        <td><input type="radio" class="" id="radioAulaHojeMB" name="aulaHoje" value=""></td>
                                        <td><input type="radio" class="" id="radioAulaHojeBom" name="aulaHoje" value=""></td> 
                                        <td><input type="radio" class="" id="radioAulaHojeRuim" name="aulaHoje" value=""></td> 
                                        <td><input type="radio" class="" id="radioAulaHojeMR" name="aulaHoje" value=""></td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <div>Metodologia aplicada pelo instrutor?</div>
                                        </td>
                                        <td><input type="radio" class="" id="radioMetodologiaMB" name="metodologia" value=""></td>
                                        <td><input type="radio" class="" id="radioMetodologiaBom" name="metodologia" value=""></td>
                                        <td><input type="radio" class="" id="radioMetodologiaRuim" name="metodologia" value=""></td>
                                        <td><input type="radio" class="" id="radioMetodologiaMR" name="metodologia" value=""></td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <div>Postura did�tica do instrutor?</div>
                                        </td>
                                        <td><input type="radio" class="" id="radioPosturaMB" name="radioPostura" value=""></td> 
                                        <td><input type="radio" class="" id="radioPosturaBom" name="radioPostura" value=""></td>
                                        <td><input type="radio" class="" id="radioPosturaRuim" name="radioPostura" value=""></td> 
                                        <td><input type="radio" class="" id="radioPosturaMR" name="radioPostura" value=""></td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <div>Computadores e equipamentos?</div>
                                        </td>
                                        <td><input type="radio" class="" id="radioPcEquipamentoMB" name="radioPcEquipamento" value=""></td> 
                                        <td><input type="radio" class="" id="radioPcEquipamentoBom" name="radioPcEquipamento" value=""></td>
                                        <td><input type="radio" class="" id="radioPcEquipamentoRuim" name="radioPcEquipamento" value=""></td>
                                        <td><input type="radio" class="" id="radioPcEquipamentoMR" name="radioPcEquipamento" value=""></td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <div>Condi��es f�sicas do ambiente?</div>
                                        </td>
                                        <td><input type="radio" class="" id="radioCondicoesMB" name="radioCondicoes" value=""></td>
                                        <td><input type="radio" class="" id="radioCondicoesBom" name="radioCondicoes" value=""></td>
                                        <td><input type="radio" class="" id="radioCondicoesRuim" name="radioCondicoes" value=""></td>
                                        <td><input type="radio" class="" id="radioCondicoesMR" name="radioCondicoes" value=""></td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <div>Observa��es</div>
                                        </td>
                                        <td colspan="4">
                                            <textarea class="textAvaliacao form-control area"></textarea>
                                        </td>
                                    </tr>
                                </tbody>    
                            </table>
                        </div>

                        <div class="form-group">

                        </div>
                    </div>
                </div>

                <!-- Tab Provas -->
                <div class="tab-pane" id="notas">
                    <div class="post clearfix">
                        <h4>Pesquise uma Turma na lista</h4>

                        <div class="form-group">

                        </div>

                        <div class="form-group">

                        </div>
                    </div>
                </div>

                <!-- Tab Grade Escolar -->
                <div class="tab-pane" id="grade">
                    <div class="post clearfix">
                        <h4>Pesquise uma Turma na lista</h4>

                        <div class="form-group">

                        </div>

                        <div class="form-group">

                        </div>
                    </div>
                </div>

                <!-- Tab Perfil -->
                <div class="tab-pane" id="perfil">
                    <div class="post clearfix">
                        <%
                            String meuPerfil = "";

                            if (SessaoAdmin.verificaSessaoAluno(request, response)) {
                                meuPerfil = SessaoAdmin.retornaSessao(request);
                                out.print(meuPerfil);
                                PessoaBean aluno = new PessoaDAO().listaUsuarioPorLogin(meuPerfil);
                                out.print(aluno);
                        %>

                        <h1><%=aluno.getNome() %> <%=aluno.getSobrenome() %></h1>

                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Sexo</th>
                                    <td><i class="fa fa-mars"> <%=aluno.getSexo()%></td>
                                </tr>
                                <tr>
                                    <th>Data Nascimento</th>
                                    <td><aluno.getDataDeNascimento></td>
                                </tr>
                                <tr>
                                    <th>E-Mail</th>
                                    <td><%=aluno.getEmail()%></td>
                                </tr>
                                <tr>
                                    <th>Telefone</th>
                                    <td><%=aluno.getTelefone()%></td>
                                </tr>
                                <tr>
                                    <th>Login</th>
                                    <td><%=aluno.getLogin()%></td>
                                </tr>
                                <tr>
                                    <th>Tipo</th>
                                    <td><%=aluno.getTipo() %></td>
                                </tr>
                                <tr>
                                    <th>Ativo</th>
                                    <td><%=aluno.isAtivo() %></td>
                                </tr>
                            </thead>
                        </table>

                        <div class="form-group">

                        </div>
                        <% } %>
                    </div>
                </div>
            </div>
        </div>