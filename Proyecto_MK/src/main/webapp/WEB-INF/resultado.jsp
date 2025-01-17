<%-- resultados.jsp --%>
<html>
<head>
    <title>Resultados de Habitaciones Disponibles</title>
</head>
<body>
    <h2>Habitaciones Disponibles</h2>

    <%-- Recuperamos las habitaciones disponibles --%>
    <%
        List<String> habitacionesDisponibles = (List<String>) request.getAttribute("habitacionesDisponibles");
        if (habitacionesDisponibles != null && !habitacionesDisponibles.isEmpty()) {
            for (String habitacion : habitacionesDisponibles) {
    %>
                <div>
                    <p><%= habitacion %></p>
                </div>
    <%      } 
        } else {
    %>
            <p>No hay habitaciones disponibles para las fechas seleccionadas.</p>
    <%      }
    %>

</body>
</html>
