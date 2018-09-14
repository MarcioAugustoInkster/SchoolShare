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
                <h4>Selecione uma Instituição e crie um repositório</h4>

                <div class="input-group input-group-sm">
                    <input type="text" class="form-control">
                    <span class="input-group-btn">
                        <button type="button" class="btn btn-info btn-flat">Pesquisar</button>
                    </span>
                </div>
            </div>

            <div class="post clearfix">
                <%=InstituicaoDAO.listaInstituicaoRepo()%>
            </div>

            <div class="post">

            </div>
        </div>

        <div class="tab-pane" id="curso">
            <div class="post">
                <h4>Selecione uma Instituição e crie um Curso</h4>

                <div class="input-group input-group-sm">
                    <div class="form-group">
                        <%
                            Test test = new Test();
                            List<String> instituicao = test.findFoldersInDirectory(request);
                        %>
                        <select class="form-control">
                        <%
                            for (String folders : instituicao) {
                        %>
                            <option value="<%=folders%>"><%=folders%></option>
                        <%
                            }
                        %>
                        </select>
                    </div>
                </div>
            </div>

            <div class="post clearfix">
                <table id="tabelaProfessor" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Descrição do Curso</th>
                            <th><i class="fa fa-check"></i></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            int count = 1;
                            String[] cursos = Listas.listaCursosEntra21();

                            for (String lista : cursos) {
                        %>
                        <tr>
                            <td><%=count++%></td>
                            <td><%=lista%></td>
                            <td>
                                <span class="input-group-addon">
                                    <input type="radio" name="check-row-data">
                                </span>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>

            <div class="post">

            </div>
        </div>

        <div class="tab-pane" id="turma">
            <div class="post">

            </div>

            <div class="post clearfix">

            </div>

            <div class="post">

            </div>
        </div>

        <div class="tab-pane" id="aluno">
            <div class="post">

            </div>

            <div class="post clearfix">

            </div>

            <div class="post">

            </div>
        </div>
    </div>
</div>