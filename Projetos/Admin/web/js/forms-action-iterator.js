
/**
 *  Funções de controle páginas Instituição
 */
function onInstituitionIndex() {
    window.location.href = "/admin/instituicaoIndex.jsp";
}

function onInstituitionRegister() {
    window.location.href = "/admin/cadastroInstituicao.jsp";
}

function onInstituitionList() {
    window.location.href = "/admin/listaInstituicao.jsp";
}

/**
 *  Funções de controle páginas Instituição
 */

function onCourseIndex() {
    window.location.href = "/admin/cursoIndex.jsp";
}

function onCourseRegister() {
    window.location.href = "/admin/cadastroCurso.jsp";
}

function onCourseList() {
    window.location.href = "/admin/listaCurso.jsp";
}

/**
 *  Funções de controle de páginas Professor
 */

function onTeacherIndex() {
    window.location.href = "/admin/professorIndex.jsp";
}

function onTeacherRegister() {
    window.location.href = "/admin/cadastroProfessor.jsp";
}

function onTeacherList() {
    window.location.href = "/admin/listaProfessor.jsp";
}

/**
 *  Funções de controle de páginas Turmas
 */

function onClassIndex() {
    window.location.href = "/admin/turmaIndex.jsp";
}

function onClassRegister() {
    window.location.href = "/admin/cadastroTurma.jsp";
}

function onClassList() {
    window.location.href = "/admin/listaTurma.jsp";
}

/**
 *  Funções de controle de páginas Notas e Frequencia
 */
function onCadastroNota() {
    window.location.href = "/admin/cadastroNota.jsp";
}

function onStudentListNota() {
    window.location.href = "/admin/listaNota.jsp";
}

function onChamadaAluno() {
    window.location.href = "/admin/chamadaAluno.jsp";
}

function onStudentIndex() {
    window.location.href = "/admin/alunoIndex.jsp";
}

function onNotaIndex() {
    window.location.href = "/admin/notaIndex.jsp";
}

function onFrequencyIndex() {
    window.location.href = "/admin/frequenciaIndex.jsp";
}

function onFrequencyRegister() {
    window.location.href = "/admin/cadastroFrequencia.jsp";
}

function onFrequencyList() {
    window.location.href = "/admin/listaFrequencia.jsp";
}


/**
 *  Funções de controle de páginas Matricula
 */

function onEnrollmentIndex() {
    window.location.href = "/admin/matriculaIndex.jsp";
}

function onEnrollmentRegister() {
    window.location.href = "/admin/cadastroMatricula.jsp";
}

function onEnrollmentList() {
    window.location.href = "/admin/listaMatricula.jsp";
}

/*
 * 
 * @returns Notas de Alunos
 */
function onNotesIndex() {
    window.location.href = "/admin/notasIndex.jsp";
}

function onNotesRegister() {
    window.location.href = "/admin/notasNovo.jsp";
}

/**
 *  Funções de controle de páginas Frequencia
 */

function onFrequencyIndex() {
    window.location.href = "/admin/frequenciaIndex.jsp";
}

function onFrequencyRegister() {
    window.location.href = "/admin/cadastroFrequencia.jsp";
}

function onFrequencyList() {
    window.location.href = "/admin/listaFrequencia.jsp";
}

/**
 *  Funções de controle para Repositório de Arquivos
 */

function onRepoIndex() {
    window.location.href = "/admin/repoIndex.jsp";
}

function onRepoRegister() {
    window.location.href = "/admin/cadastroRepo.jsp";
}

function onRepoList() {
    window.location.href = "/admin/listaRepo.jsp";
}

/**
 *  Funções para criar repositório de arquivos
 */

function onRepoInstitution() {
    window.location.href = "/admin/repoInstituicao.jsp";
}

function onRepoCourse() {
    window.location.href = "/admin/repoCurso.jsp";
}

function onRepoClass() {
    window.location.href = "/admin/repoTurma.jsp";
}

function onRepoTeacher() {
    window.location.href = "/admin/repoProfessor.jsp";
}

function onRepoStudent() {
    window.location.href = "/admin/repoAluno.jsp";
}

/**
 *  Acesso externo que ficam em tabelas, como links, buttons, etc
 */

function onCreateFolder(id) {
    window.location.href = "/repocheck?req=" + id;
}

function onCreateCourseFolder(inst, id) {
    window.location.href = "/repocheck?inst=" + inst + "&cur=" + id;
}

/**
 * Cada folder terá um código ou nome de acesso para os folders 
 * físicos do sistema para leitura
 */

function getRepoInstitution(name) {
    window.location.href = "/admin/folder.jsp?folder=" + name;
}


