<%@page language="java" import="java.sql.*"%>

<%

String vnome = request.getParameter("txtName");
String vemail = request.getParameter("txtEmail") ;
String vpassword = request.getParameter("txtPassword") ;

//Variaveis do banco de dados

String banco = "fanavid" ;
String endereco = "jdbc:mysql://localhost:3306/" + banco ;
String usuario = "root" ;
String senha = "" ;

String driver = "com.mysql.jdbc.Driver" ;

//Carregar o driver na memoria
Class.forName( driver ) ;
//Criar a variavel para conectar com o banco de dados
Connection conexao ;
//Abrir a conexao com o banco de dados
conexao = DriverManager.getConnection(endereco, usuario, senha ) ;

//Comando para inserir
String sql = "INSERT INTO clientes (Nome, Email, Senha) values(?, ?, ?)" ; 

//Statement para executar o comando do banco
PreparedStatement stm = conexao.prepareStatement( sql ) ;

stm.setString(1, vnome) ;
stm.setString(2, vemail) ;
stm.setString(3, vpassword);

stm.execute() ;

conexao.close();
stm.close() ;

out.print("Cadastro feito com sucesso");

%>