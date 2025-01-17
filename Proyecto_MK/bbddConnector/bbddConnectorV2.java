package bbddConnector;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class bbddConnectorV2 {
    private Connection connection;

    public bbddConnectorV2() throws SQLException {
        String url = "jdbc:mysql://bew3kbjtj9n5faq31kla-mysql.services.clever-cloud.com:3306/bew3kbjtj9n5faq31kla"; 
        String user = "ueaxccosiwgfnuo5"; 
        String password = "J9d5wTPIyWsgRyXmEJfd";
        connection = DriverManager.getConnection(url, user, password);
    }

    public List<String> obtenerHabitacionesDisponibles(String lugar, String fechaEntrada, String fechaSalida) {
        List<String> habitacionesDisponibles = new ArrayList<>();

        String query = """
                SELECT h.numero_referencia, h.nombre_habitacion, h.numero_personas, h.descripcion, h.precio_noche, h.lugar
                FROM Habitaciones h
                WHERE h.lugar = ? 
                  AND h.numero_referencia NOT IN (
                      SELECT r.numero_referencia
                      FROM Reservadas r
                      WHERE r.lugar = ?
                        AND (
                            (? BETWEEN r.fecha_entrada AND r.fecha_salida) OR
                            (? BETWEEN r.fecha_entrada AND r.fecha_salida) OR
                            (r.fecha_entrada BETWEEN ? AND ?)
                        )
                  )
                """;

        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, lugar);
            stmt.setString(2, lugar);
            stmt.setString(3, fechaEntrada);
            stmt.setString(4, fechaSalida);
            stmt.setString(5, fechaEntrada);
            stmt.setString(6, fechaSalida);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String habitacion = "Número de Referencia: " + rs.getInt("numero_referencia") +
                        ", Nombre: " + rs.getString("nombre_habitacion") +
                        ", Capacidad: " + rs.getInt("numero_personas") +
                        ", Descripción: " + rs.getString("descripcion") +
                        ", Precio por Noche: " + rs.getDouble("precio_noche") +
                        ", Lugar: " + rs.getString("lugar");
                habitacionesDisponibles.add(habitacion);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return habitacionesDisponibles;
    }
}
