function validateRadio(radios) {
    for (i = 0; i < radios.length; ++i) {
        if (radios [i].checked) {
            return true;
        }
    }
    return false;
}
$(document).ready(function () {
    $('#formAvaliacao button').click(function () {
        var msg = "Por favor, sua opinião é muito importante para nós.";
        msg += "\n\nResponda todo o questionário. Só leva 1 minuto! =D";

        if (validateRadio(document.forms["formAvaliacao"]["qDesempenho"]) &&
                validateRadio(document.forms["formAvaliacao"]["qCarregamento"]) &&
                validateRadio(document.forms["formAvaliacao"]["qVisao"]) &&
                validateRadio(document.forms["formAvaliacao"]["qFalha"]) &&
                validateRadio(document.forms["formAvaliacao"]["qProblema"]) &&
                validateRadio(document.forms["formAvaliacao"]["qFacilidade"]) &&
                validateRadio(document.forms["formAvaliacao"]["qConteudo"]) &&
                validateRadio(document.forms["formAvaliacao"]["qOrganizacao"])) {

            return true;
        } else {
            alert(msg);
        }
        return false;
    });
});

$(document).ready(function () {
    $("#campoAnoProfessor").datepicker({
        dateFormat: "d M y"
    });
    
    $("#campoAnoAluno").datepicker({
        dateFormat: "d M y"
    });
    
    $("#campoDataInicioCurso").datepicker({
        dateFormat: "d M y"
    });
    
    $("#campoDataFinalCurso").datepicker({
        dateFormat: "d M y"
    });

    $(StartDate).keydown(function (e) {
        // Allow: backspace, delete, tab
        if ($.inArray(e.keyCode, [46, 8, 9]) !== -1 ||
            // Allow: Ctrl+A, Command+A
            (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
            // Allow: home, end, left, right, down, up
            (e.keyCode >= 35 && e.keyCode <= 40)) {
            // let it happen, don't do anything
            return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode > 1 || e.keyCode < 200))) {
            e.preventDefault();
        }
    });
});

$(document).ready(function () {
    $("#erroNomeProfessor").hide();
    $("#erroDataProfessor").hide();
    $("#erroEmailProfessor").hide();
    $("#erroPhoneProfessor").hide();
    $("#erroLoginProfessor").hide();
    $("#erroSenhaProfessor").hide();
    $("#erroRepeteProfessor").hide();

    $("#submitProfessor").click(function () {
        var nome = $('#campoProfessorNome').val();
        var dataCampo = $('#campoAnoProfessor').val();
        var email = $("#campoEmailProfessor").val();
        var phone = $("#campoTelefoneProfessor").val();
        var login = $("#campoLoginProfessor").val();
        var senha = $("#campoSenhaProfessor").val();
        var repete = $("#campoSenhaRepetirProfessor").val();
        
        if (nome.length < 3) {
            $("#erroNomeProfessor").show();
            $("#erroNomeProfessor").text("Este campo Nome ser preenchido");
            $("#campoProfessorNome").focus();
        } else {
            $("#erroNomeProfessor").hide();
        }
        if (dataCampo.length <= 9) {
            $("#erroDataProfessor").show();
            $("#erroDataProfessor").text("Este campo Data deve ser preenchido");
        } else {
            $("#erroDataProfessor").hide();
        }
        if (!isValidEmailAddress(email)) {
            $("#erroEmailProfessor").show();
            $("#erroEmailProfessor").text("Este campo E-mail deve ser preenchido");
            $("#campoEmailProfessor").focus();
        } else {
            $("#erroEmailProfessor").hide();
        }
        if (phone.length <= 14) {
            $("#erroPhoneProfessor").show();
            $("#erroPhoneProfessor").text("Este campo Telefone deve ser preenchido");
            $("#campoTelefoneProfessor").focus();
        } else {
            $("#erroPhoneProfessor").hide();
        }
        if (login.length < 5) {
            $("#erroLoginProfessor").show();
            $("#erroLoginProfessor").text("Este campo Login ser preenchido");
            $("#campoLoginProfessor").focus();
        } else {
            $("#erroLoginProfessor").hide();
        }
        if (senha.length < 6) {
            $("#erroSenhaProfessor").show();
            $("#erroSenhaProfessor").text("Este campo Senha ser preenchido");
            $("#campoSenhaProfessor").focus();
        } else {
            $("#erroSenhaProfessor").hide();
        }
        if (repete.length < 6) {
            $("#erroRepeatProfessor").show();
            $("#erroRepeatProfessor").text("Repita a Senha anterior");
            $("#campoSenhaRepetirProfessor").focus();
        } else {
            $("#erroRepeatProfessor").hide();
        }
        if (senha != repete) {
            $("#erroRepeatProfessor").show();
            $("#erroRepeatProfessor").text("Repita a Senha anterior");
            
            $("#campoSenhaRepetirProfessor").focus();
        } else {
            $("#erroRepeatProfessor").hide();
        }
        if (nome.length >= 3 && 
            dataCampo.length > 9 && 
            isValidEmailAddress(email) && 
            phone.length > 14 && 
            login.length >= 5 &&
            senha.length >= 6 && 
            repete.length >= 6 && 
            senha == repete) {
        
            return true;
        }
        return false;
    });
});

$(document).ready(function () {
    $("#erroNomeAluno").hide();
    $("#erroDataAluno").hide();
    $("#erroEmailAluno").hide();
    $("#erroPhoneAluno").hide();
    $("#erroLoginAluno").hide();
    $("#erroSenhaAluno").hide();
    $("#erroRepeteAluno").hide();

    $("#submitAluno").click(function () {
        var nome = $('#campoAlunoNome').val();
        var dataCampo = $('#campoAnoAluno').val();
        var email = $("#campoEmailAluno").val();
        var phone = $("#campoTelefoneAluno").val();
        var login = $("#campoLoginAluno").val();
        var senha = $("#campoSenhaAluno").val();
        var repete = $("#campoSenhaRepetirAluno").val();
        
        if (nome.length < 3) {
            $("#erroNomeAluno").show();
            $("#erroNomeAluno").text("Este campo Nome ser preenchido");
            $("#campoAlunoNome").focus();
        } else {
            $("#erroNomeAluno").hide();
        }
        if (dataCampo.length <= 9) {
            $("#erroDataAluno").show();
            $("#erroDataAluno").text("Este campo Data deve ser preenchido");
            $("#campoAnoAluno").focus();
        } else {
            $("#erroData").hide();
        }
        if (!isValidEmailAddress(email)) {
            $("#erroEmailAluno").show();
            $("#erroEmailAluno").text("Este campo E-mail deve ser preenchido");
            $("#campoEmailAluno").focus();
        } else {
            $("#erroEmailAluno").hide();
        }
        if (phone.length <= 14) {
            $("#erroPhoneAluno").show();
            $("#erroPhoneAluno").text("Este campo Telefone deve ser preenchido");
            $("#campoTelefoneAluno").focus();
        } else {
            $("#erroPhoneAluno").hide();
        }
        if (login.length < 5) {
            $("#erroLoginAluno").show();
            $("#erroLoginAluno").text("Este campo Login ser preenchido");
            $("#campoLoginAluno").focus();
        } else {
            $("#erroLoginAluno").hide();
        }
        if (senha.length < 6) {
            $("#erroSenhaAluno").show();
            $("#erroSenhaAluno").text("Este campo Senha ser preenchido");
            $("#campoSenhaAluno").focus();
        } else {
            $("#erroSenhaAluno").hide();
        }
        if (repete.length < 6) {
            $("#erroRepeatAluno").show();
            $("#erroRepeatAluno").text("Repita a Senha anterior");
            $("#campoSenhaRepetirProfessor").focus();
        } else {
            $("#erroRepeteAluno").hide();
        }
        if (senha != repete) {
            $("#erroRepete").show();
            $("#erroRepete").text("Repita a Senha anterior");
            
            $("#campoSenhaRepetirAluno").focus();
        } else {
            $("#erroRepeteAluno").hide();
        }
        if (nome.length >= 3 && 
            dataCampo.length > 9 && 
            isValidEmailAddress(email) && 
            phone.length > 14 && 
            login.length >= 5 &&
            senha.length >= 6 && 
            repete.length >= 6 && 
            senha == repete) {
        
            return true;
        }
        return false;
    });
});

$(document).ready(function () {
    $('#resetProfessor').click(function () {
        $("#erroNomeProfessor").hide();
        $("#erroDataProfessor").hide();
        $("#erroEmailProfessor").hide();
        $("#erroPhoneProfessor").hide();
        $("#erroLoginProfessor").hide();
        $("#erroSenhaProfessor").hide();
        $("#erroRepeteProfessor").hide();
    });
});

$(document).ready(function () {
    $('#resetAluno').click(function () {
        $("#erroNomeAluno").hide();
        $("#erroDataAluno").hide();
        $("#erroEmailAluno").hide();
        $("#erroPhoneAluno").hide();
        $("#erroLoginAluno").hide();
        $("#erroSenhaAluno").hide();
        $("#erroRepeteAluno").hide();
    });
});

function isValidEmailAddress(emailAddress) {
    var pattern = new RegExp(/^(("[\w-+\s]+")|([\w-+]+(?:\.[\w-+]+)*)|("[\w-+\s]+")([\w-+]+(?:\.[\w-+]+)*))(@((?:[\w-+]+\.)*\w[\w-+]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][\d]\.|1[\d]{2}\.|[\d]{1,2}\.))((25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\.){2}(25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\]?$)/i);
    return pattern.test(emailAddress);
};