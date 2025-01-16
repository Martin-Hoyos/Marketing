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