function validateRadio(radios) {
    for (i = 0; i < radios.length; ++i) {
        if (radios [i].checked) {
            return true;
        }
    }
    return false;
}
$(document).ready(function () {
    $('#formAvaliacao button').click(function(){
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