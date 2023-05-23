<%@page language="java" import="java.sql.*" %>

<%


    String vnome    = request.getParameter("txtNome") ;
    String vemail    = request.getParameter("txtEmail") ;
    String vsenha    = request.getParameter("txtPassword") ;

    //variaveis para o banco de dados
    String banco    = "fanavid" ;
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

    String sql = "SELECT * from clientes  where nome=? and email=? and senha=?";
    


    //Cria o statement para executar o comando do banco
    PreparedStatement stm = conexao.prepareStatement( sql ) ;

    stm.setString(1, vnome);
    stm.setString(2, vemail);
    stm.setString(3, vsenha);

    //Cria a variavel para armazenar as informações que virão do Bando de Dados
    ResultSet dados = stm.executeQuery() ;

    if(dados.next()) {
       session.setAttribute("nome" , dados.getString("nome") ) ;
       response.sendRedirect("index-return.html");
    }else{
        out.print("Login incorreto");
   }

    conexao.close() ;
    stm.close() ;

%>

</body>
</html>

