function verificar(){
    var enviar = true;
    var n = document.form2.txtName.value;
    if(n.length == 0){
        enviar = false;
        document.querySelector("#erroNome").textContent = "preencha o campo nome";
    }

    var e = document.form2.txtEmail.value;
    if(e.indexOf("@")< 0){
        enviar = false;
        document.querySelector("#erroEmail").textContent = "Preencha o campo corretamente"
    }

    var s = document.form2.txtPassword.value;
    if(s.length == 0){
        enviar = false;
        document.querySelector("#erroSenha").textContent = "Preencha esse campo";
    }


    if(enviar){
        document.form2.submit();
    }
}