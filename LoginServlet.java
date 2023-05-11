import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        // conectar ao banco de dados MySQL
        String url = "jdbc:mysql://localhost:3306/meu_banco_de_dados";
        String user = "usuario";
        String dbPassword = "senha";
        
        try {
            Connection conn = DriverManager.getConnection(url, user, dbPassword);
            
            // criar uma consulta SQL para verificar se o nome de usuário e senha correspondem a um registro válido
            String sql = "SELECT * FROM usuarios WHERE username=? AND password=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            
            // se a consulta SQL retornar um registro válido, criar uma sessão HTTP para o usuário
            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                response.sendRedirect("pagina_autenticada.jsp");
            } else {
                // se a consulta SQL não retornar um registro válido, redirecionar o usuário de volta para a página de login com uma mensagem de erro
                response.sendRedirect("login.jsp?error=1");
            }
            
            conn.close();
       
