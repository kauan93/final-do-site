function verificar(){
    var enviar = true;
    var n = document.form1.txtNome.value;
    if(n.length == 0){
        enviar = false;
        document.querySelector("#erroNome").textContent = "preencha o campo nome";
    }

    var e = document.form1.txtEmail.value;
    if(e.indexOf("@")< 0){
        enviar = false;
        document.querySelector("#erroEmail").textContent = "Preencha o campo corretamente"
    }

    var s = document.form1.txtPassword.value;
    if(s.length == 0){
        enviar = false;
        document.querySelector("#erroSenha").textContent = "Preencha esse campo";
    }


    if(enviar){
        document.form1.submit();
    }
}