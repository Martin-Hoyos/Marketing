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
    
    request.setAttribute("habitaciones", habitaciones);
%>
<html lang="es">
<head>
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <title>Reserva de Hotel</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap" rel="stylesheet"/>
    <style>
         body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .texto-hero {
            padding: 20px;
            border-radius: 8px;
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
                <li>
                    <a href="index.html">Inicio</a>
                </li>
                <li>
                    <a href="#">Servicios</a>
                </li>
                <li>
                    <a href="#">Habitaciones</a>
                </li>
                <li>
                    <a href="../html/contacto.html">Contáctanos</a>
                </li>
                <li>
                    <button>
                        <span><a href="reservar.jsp">Reservar</a></span>
                    </button>
                </li>
            </ul>
        </nav>
    </div>
</header>

<br><br><br><br><br><br><br><br><br><br><br>
<div class="container mx-auto p-4">
    <div class="max-w-md mx-auto bg-white rounded-lg shadow-md overflow-hidden md:max-w-lg">
        <div class="md:flex">
            <div class="w-full p-4">
                <div class="text-center">
                    <h2 class="text-2xl font-bold text-gray-700">Reserva de Hotel</h2>
                </div>
                <form class="mt-4" method="post" action="">
                    <div class="mb-4">
                        <label class="block text-gray-700" for="hotel">Hotel</label>
                        <select class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" id="hotel" name="lugar">
                            <option value="">Seleccione una Ciudad</option>
                            <option value="Lérida">Vall de boí, Lérida</option>
                            <option value="Cáceres">Las Hurdes (Cáceres)</option>
                            <option value="Cantabria">Valles Pasiegos, Cantabria</option>
                        </select>
                    </div>
                    <div class="mb-4">
                        <label class="block text-gray-700" for="checkin">Fecha de Entrada</label>
                        <input class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" id="checkin" type="date" name="fechaEntrada"/>
                    </div>
                    <div class="mb-4">
                        <label class="block text-gray-700" for="checkout">Fecha de Salida</label>
                        <input class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" id="checkout" type="date" name="fechaSalida"/>
                    </div>
                    <div class="text-center">
                        <button class="w-full bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500" type="submit">
                            Reservar
                        </button>
                    </div>
                </form>
                
                <c:if test="${not empty habitaciones}">
                    <h3 class="text-xl font-bold text-gray-700 mt-6">Habitaciones Disponibles</h3>
                    <ul>
                        <c:forEach var="habitacion" items="${habitaciones}">
                            <li class="bg-gray-200 p-4 my-2 rounded-md">
                                ${habitacion}
                            </li>
                        </c:forEach>
                    </ul>
                </c:if>
            </div>
        </div>
    </div>
</div>
</body>
</html>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://cdn.tailwindcss.com">
  </script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap" rel="stylesheet"/>
  
  
</head>
<body class="bg-gray-100 font-roboto">
  <header class="hidden-header">
   <div class="container mx-auto flex justify-between items-center px-4">
    <div class="logo">
     <h1>
      <a href="index.html">
       <img alt="Logo del menú del hotel Bellavista en color blanco" src="../fotos/logo_BELLAVIST_blanco.png"/>
      </a>
     </h1>
    </div>
    <nav>
     <ul class="flex space-x-4">
      <li>
       <a href="index.html">
        Inicio
       </a>
      </li>
      <li>
       <a href="#">
        Servicios
       </a>
      </li>
      <li>
       <a href="#">
        Habitaciones
       </a>
      </li>
      <li>
       <a href="../html/contacto.html">
        Contáctanos
       </a>
      </li>
      <li>
       <button>
        <span>
         <a href="reservar.html">
          Reservar
         </a>
        </span>
       </button>
      </li>
     </ul>
    </nav>
   </div>
  </header>
  <br><br><br><br><br><br><br><br><br><br><br>
  <div class="container mx-auto p-4">
   <div class="max-w-md mx-auto bg-white rounded-lg shadow-md overflow-hidden md:max-w-lg">
    <div class="md:flex">
     <div class="w-full p-4">
      <div class="text-center">
       <h2 class="text-2xl font-bold text-gray-700">
        Reserva de Hotel
       </h2>
      </div>
      <form class="mt-4">
       <div class="mb-4">
        <label class="block text-gray-700" for="hotel">
         Hotel
        </label>
        <select class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" id="hotel">
         <option value="">
          Seleccione una Ciudad
         </option>
         <option value="hotel1">
            Vall de boí, Lérida
         </option>
         <option value="hotel2">
            Las Hurdes (Cáceres)
         </option>
         <option value="hotel3">
            Valles Pasiegos, Cantabria3
         </option>
        </select>
       </div>
       <div class="mb-4">
        <label class="block text-gray-700" for="checkin">
         Fecha de Entrada
        </label>
        <input class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" id="checkin" type="date"/>
       </div>
       <div class="mb-4">
        <label class="block text-gray-700" for="checkout">
         Fecha de Salida
        </label>
        <input class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" id="checkout" type="date"/>
       </div>
       <div class="text-center">
        <button class="w-full bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500" type="submit">
         Reservar
        </button>
       </div>
      </form>
     </div>
    </div>
   </div>
  </div>
</body>
</html>
>>>>>>> 05f8d9d2df8cf18cdbac6e4f4e5eb92cf01aa7cc
