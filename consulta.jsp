<%@page language="java" import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>

    <style>
        table {
            border: solid 1px blue;
        }
    </style>

</head>
<body>


<%

    //variaveis para o banco de dados
    String banco    = "aula" ;
    String endereco = "jdbc:mysql://localhost:3306/" + banco;
    String usuario  = "root";
    String senha    = "" ;

    String driver   = "com.mysql.jdbc.Driver" ;

    //Carregar o driver na memória
    Class.forName( driver ) ;

    //Cria a vriavel para Concectar com o banco
    Connection conexao ; 

    //Abri a conexão com o banco
    conexao = DriverManager.getConnection( endereco, usuario, senha) ;

    String sql = "SELECT * from alunos";

    //Cria o statement para executar o comando do banco
    PreparedStatement stm = conexao.prepareStatement( sql ) ;

    //Cria a variavel para armazenar as informações que virão do Bando de Dados
    ResultSet dados = stm.executeQuery() ;


    out.print("<table>") ;


    while ( dados.next() ) 
    { 
        out.print( "<tr>" );
            out.print("<td>") ;
                out.print(  dados.getString("codigo")  ) ;
            out.print("</td>") ;

            out.print("<td>") ;
                out.print(  dados.getString("nome")  ) ;
            out.print("</td>") ;

            out.print("<td>") ;
                out.print(  dados.getString("idade")  ) ;
            out.print("</td>") ;

            out.print("<td>") ;
                out.print(  dados.getString("email")  ) ;
            out.print("</td>") ;
        out.print( "</tr>" ) ;
    }

    out.print("</table>") ;

    conexao.close() ;
    stm.close() ;

%>

</body>
</html>

