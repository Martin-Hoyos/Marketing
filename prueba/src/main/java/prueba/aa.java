package prueba;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/comentario")
public class aa extends HttpServlet {

    private static final long serialVersionUID = 1L;
    // Datos de conexión a la base de datos
    private static final String DB_URL = "jdbc:mysql://bew3kbjtj9n5faq31kla-mysql.services.clever-cloud.com:3306/bew3kbjtj9n5faq31kla";
    private static final String DB_USER = "ueaxccosiwgfnuo5";
    private static final String DB_PASSWORD = "J9d5wTPIyWsgRyXmEJfd";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Obtener parámetros del formulario
        String Nombre = request.getParameter("nombre");
        String Correo = request.getParameter("email");
        String Puntuacion = request.getParameter("puntuacion");
        String Comentario = request.getParameter("comentario");

        try {
            // Cargar el driver JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establecer conexión con la base de datos
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Verificar si el correo ya existe
            String checkEmailSql = "SELECT * FROM Resenas WHERE Correo = ?";
            PreparedStatement checkEmailStmt = conn.prepareStatement(checkEmailSql);
            checkEmailStmt.setString(1, Correo);
            ResultSet rs = checkEmailStmt.executeQuery();

            if (rs.next()) {
                // Si el correo ya está registrado, mostrar mensaje de error
                request.setAttribute("error", "El correo ya está registrado. Intente con otro.");
            } else {
                // Insertar los datos en la tabla "Resenas"
                String sql = "INSERT INTO Resenas (Nombre, Correo, Puntuacion, Comentario) VALUES (?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, Nombre);
                stmt.setString(2, Correo);
                stmt.setString(3, Puntuacion);
                stmt.setString(4, Comentario);

                int rowsInserted = stmt.executeUpdate();

                if (rowsInserted > 0) {
                    // Enviar mensaje de éxito
                    request.setAttribute("success", "Gracias por su opinión.");
                } else {
                    // Mostrar mensaje de error en caso de fallo
                    request.setAttribute("error", "Error: No se pudo registrar la reseña.");
                }
                stmt.close();
            }

            // Cerrar recursos
            rs.close();
            checkEmailStmt.close();
            conn.close();

        } catch (SQLException e) {
            // Manejar excepciones relacionadas con la base de datos
            request.setAttribute("error", "Error en la base de datos: " + e.getMessage());
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // Manejar error si el driver JDBC no se encuentra
            request.setAttribute("error", "Error: Driver de MySQL no encontrado.");
            e.printStackTrace();
        }

        // Mantenerse en la misma página después de la operación
        RequestDispatcher dispatcher = request.getRequestDispatcher("servicios.jsp");
        dispatcher.forward(request, response);
    }
}
