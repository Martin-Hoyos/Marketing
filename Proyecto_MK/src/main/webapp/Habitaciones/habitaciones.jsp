<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>
   Nuestros Hoteles
  </title>
  <script src="https://cdn.tailwindcss.com">
  </script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap" rel="stylesheet"/>
  <style>
   /* General */
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
            height: 50px; 
            position: relative;
            z-index: 2; 
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
     <h1>
      <a href="../index.jsp">
       <img alt="Logo del menú del hotel Bellavista en color blanco" src="../fotos/logo_BELLAVIST_blanco.png"/>
      </a>
     </h1>
    </div>
    <nav>
     <ul class="flex space-x-4">
      <li>
       <a href="../index.jsp">
        Inicio
       </a>
      </li>
      <li>
       <a href="../servicios.jsp">
        Servicios
       </a>
      </li>
      <li>
       <a href="../habitaciones.jsp">
        Habitaciones
       </a>
      </li>
      <li>
       <a href="../contacto.jsp">
        Contáctanos
       </a>
      </li>
      <li>
       <button>
        <span>
         <a href="../reservar.jsp">
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




 </body>
</html>