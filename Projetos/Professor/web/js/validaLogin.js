
window.onload = function() { 
    $('#fl-user-field').focus();
};

function validaLogin() {
    var loginField = document.getElementsByName('fl-user-field')[0].value;
    
    apagaElemento("error");
    
    if (loginField.trim().length <= 4) {
        document.getElementById("error").innerHTML = "Deve ser maior que 4 dígitos";
        return false;
    }
}

function apagaElemento(id) {
    if (document.contains(document.getElementsById(id))) {
        document.getElementsById(id).remove();
    }
}
