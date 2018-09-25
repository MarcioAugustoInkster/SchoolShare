<div class="nav-tabs-custom">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#instituicao" data-toggle="tab">Instituição</a></li>
        <li><a href="#curso" data-toggle="tab">Curso</a></li>
        <li><a href="#turma" data-toggle="tab">Turma</a></li>
        <li><a href="#aluno" data-toggle="tab">Aluno</a></li>
    </ul>
    <div class="tab-content">
        <div class="active tab-pane" id="instituicao">
            <div class="post">

            </div>

            <div class="post clearfix">

            </div>
        </div>

        <div class="tab-pane" id="curso">
            <div class="post">
                <h4>Selecione uma Instituição e crie um Curso</h4>

                <div class="input-group input-group-sm">
                    <div class="form-group">

                    </div>
                </div>
            </div>

            <div class="post clearfix">

            </div>
        </div>

        <div class="tab-pane" id="turma">
            <div class="post">

            </div>

            <div class="post clearfix">

            </div>
        </div>

        <div class="tab-pane" id="aluno">
            <div class="form-group">
                <label for="campoMatriculaAluno">Nome do Aluno a ser cadastrado</label>
                <input type="text" class="form-control studentName" id="campoMatriculaAluno" 
                       name="campoMatriculaAluno">
            </div>

            <div class="post clearfix">
                <h4>Pesquise uma Turma na lista</h4>

                <div class="form-group">
                    <div class="input-group input-group-sm">
                        <input type="text" class="form-control" id="searchListStudent"
                               placeholder="Nome de Aluno...">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-info btn-flat">Pesquisar</button>
                        </span>
                    </div>
                </div>

                <div class="form-group">
                    <table id="studentList" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Turma</th>
                                <th>Data Inicio</th>
                                <th>Data Final</th>
                                <th>Opções</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<TurmaBean> turma = new TurmaDAO().listaTurma();

                                for (TurmaBean listagem : turma) {
                            %>
                            <tr>
                                <td><%=listagem.getId()%></td>
                                <td class="elementToCopy"><%=listagem.getTurma()%></td>
                                <td><%=listagem.getDataInicio()%></td>
                                <td><%=listagem.getDataFinal()%></td>
                                <td><a class="btn-custom btn-app-custom copyAndPaste">
                                        <i class="fa fa-user-plus"></i> Acicionar</a></td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>