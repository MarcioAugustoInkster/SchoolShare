function valorPass(valor) {
	var radio = document.forms[0].elements[valor];
	
	for(i=0; i < radio.length; i++ ) {
		if (radio[i].checked === true) {
			document.getElementById("resultado").innerHTML = radio[i].value;
			document.getElementById("hidden_teste").value = radio[i].value;
		}
	}
}