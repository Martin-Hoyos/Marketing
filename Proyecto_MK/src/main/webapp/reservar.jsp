<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="bbddConnector.bbddConnectorV2" %>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
	<%
	    String lugar = request.getParameter("lugar");
	    String fechaEntrada = request.getParameter("fechaEntrada");
	    String fechaSalida = request.getParameter("fechaSalida");
	
	    List<String> habitaciones = new ArrayList<>();
	
	    if (lugar != null && !lugar.isEmpty() && fechaEntrada != null && !fechaEntrada.isEmpty() && fechaSalida != null && !fechaSalida.isEmpty()) {
	        try {
	            bbddConnectorV2 connector = new bbddConnectorV2();
	            habitaciones = connector.obtenerHabitacionesDisponibles(lugar, fechaEntrada, fechaSalida);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	%>
<html lang="es">
<head>
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <title>Reserva de Hotel</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap" rel="stylesheet"/>
    <link rel="icon" type="image/png" href="<%= request.getContextPath() %>/fotos/logo_BELLAVIST_blanco.png" />

    
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .hidden-header {
            background-color: #0c1401;
            color: rgb(0, 0, 0);
            padding: 0px 20px 0px;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            height: 90px;
            opacity: 0.95;
        }

        header div {
            margin-top: -20px;
        }


.logo {
    text-decoration: none;
    color: inherit;
    width: 100px;
    height: 100px;
    margin-top: 40px;
    margin-left: 60px;
}


.logo-container img {
    display: block;
    height: 500px; 
    position: relative;
    z-index: 1; 
        }

        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            align-items: center;
            color: rgb(216, 216, 216);
            text-decoration: none;
            font-size: 20px;
            align-items: center;
        }

        nav ul li a:hover {
            text-decoration: underline;
        }

        /* Botón Reservar */
        button {
            display: inline-block;
            border-radius: 4px;
            background-color: #3d405b;
            border: none;
            color: #FFFFFF;
            text-align: center;
            font-size: 17px;
            padding: 16px;
            width: 130px;
            transition: all 0.5s;
            cursor: pointer;
            margin: 5px;
        }

        button span {
            cursor: pointer;
            display: inline-block;
            position: relative;
            transition: 0.5s;
        }

        button span:after {
            content: '»';
            position: absolute;
            opacity: 0;
            top: 0;
            right: -15px;
            transition: 0.5s;
        }

        button:hover span {
            padding-right: 15px;
        }

        button:hover span:after {
            opacity: 1;
            right: 0;
        }

        /* Estilos para el formulario en fila */
        .form-row {
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }

        .form-row .form-group {
            width: 30%;
        }

        .form-group select, .form-group input {
            width: 100%;
            padding: 8px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        /* Sección de habitaciones disponibles */
        .habitaciones-container {
            margin-top: 40px;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .habitacion-item {
            background-color: #ffffff;
            padding: 12px;
            margin-bottom: 12px;
            border-radius: 6px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .habitacion-item:hover {
            background-color: #f0f0f0;
        }

        .habitacion-item h4 {
            font-size: 1.2rem;
            color: #333;
            margin-bottom: 8px;
        }

        .habitacion-item p {
            font-size: 1rem;
            color: #666;
        }
    </style>
</head>
<body class="bg-gray-100 font-roboto">
<header class="hidden-header">
    <div class="container mx-auto flex justify-between items-center px-4">
        <div class="logo">
             <h1><a href="index.jsp"><img src="fotos/logo_BELLAVIST_blanco.png" alt="LogoMenu"></a></h1>
        </div>
        <nav>
            <ul class="flex space-x-4">
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="#">Servicios</a></li>
                <li><a href="#">Habitaciones</a></li>
                <li><a href="contacto.jsp">Contáctanos</a></li>
                <li><button><span><a href="reservar.jsp">Reservar</a></span></button></li>
            </ul>
        </nav>
    </div>
</header>
<br><br><br><br><br><br><br>
<div class="container mx-auto p-4">
    <div class="max-w-md mx-auto bg-white rounded-lg shadow-md overflow-hidden md:max-w-lg">
        <div class="md:flex">
            <div class="w-full p-4">
                <div class="text-center">
                    <h2 class="text-2xl font-bold text-gray-700">Reserva de Hotel</h2>
                </div>
                <form class="mt-4" method="get" action="">
                    <div class="form-row">
                        <div class="form-group">
                            <label class="block text-gray-700" for="hotel">Hotel</label>
                            <select class="w-full px-3 py-2 border border-gray-300 rounded-md" id="hotel" name="lugar">
                                <option value="">Seleccione una Ciudad</option>
                                <option value="Lérida">Vall de boí, Lérida</option>
                                <option value="Cáceres">Las Hurdes (Cáceres)</option>
                                <option value="Cantabria">Valles Pasiegos, Cantabria</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="block text-gray-700" for="checkin">Fecha de Entrada</label>
                            <input class="w-full px-3 py-2 border border-gray-300 rounded-md" id="checkin" type="date" name="fechaEntrada"/>
                        </div>
                        <div class="form-group">
                            <label class="block text-gray-700" for="checkout">Fecha de Salida</label>
                            <input class="w-full px-3 py-2 border border-gray-300 rounded-md" id="checkout" type="date" name="fechaSalida"/>
                        </div>
                    </div>
                    <div class="text-center mt-4">
                        <button class="w-full bg-[#0c1401] text-white py-2 px-4 rounded-md hover:bg-[#0c1401]" type="submit">
						    Ver Disponibilidad
						</button>

                    </div>
                </form>
            </div>
        </div>
    </div>

    <% if (!habitaciones.isEmpty()) { %>
        <div class="habitaciones-container">
            <h3 class="text-xl font-bold text-gray-700">Habitaciones Disponibles</h3>
            <div>
                <% for (String habitacion : habitaciones) { %>
                    <div class="habitacion-item">
                        <h4><%= habitacion %></h4>
                    </div>
                <% } %>
            </div>
        </div>
    <% } else if (lugar != null) { %>
        <p class="text-red-500">No hay habitaciones disponibles para las fechas seleccionadas.</p>
    <% } %>
</div>
</body>
</html>
