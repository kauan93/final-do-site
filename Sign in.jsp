<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Cadastro</title>
</head>
<body>
    <main>
        <h1>Create Account</h1>
        <div class="social-media">
            <a href="#">
                <img src="assets/google.png" alt="Google">
            </a>
                <a href="#">
                    <img src="assets/facebook.png" alt="Facebook">
                </a>
                    <a href="#">
                        <img src="assets/linkedin.png" alt="Linkedin">
                    </a>
        </div>

        <div class="alternative">
            <span>OR</span>
        </div>

        <form name="form1" method="post" action="verificalogin.jsp">
            <label for="name">
                <span>Name</span>
                <input type="text" id="name" name="txtNome">
                <span id="erroNome"></span>
            </label>
            <label for="email">
                <span>E-mail</span>
                <input type="email" id="email" name="txtEmail">
                <span id="erroEmail"></span>
            </label>
            <label for="password">
                <span>Password</span>
                <input type="password" id="password" name="txtPassword">
                <span id="erroSenha"></span>
            </label>
            <input type="button" value="Sign in" onclick="verificar()">
        </form>
    </main>
    <section class="images">
        <img src="assets/mobile.svg" alt="">
        <div class="circle"></div>
    </section>
    <script src="validacao-sign-in.js"></script>
</body>
</html>