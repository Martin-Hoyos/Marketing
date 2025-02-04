<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
    <link rel="stylesheet" href="css/styles.css">
  <script src="https://cdn.tailwindcss.com"> </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap" rel="stylesheet"/>
    <script src="WEN-INF/js/menu_idiomas.js">
    </script>
<body>
<header class="hidden-header">
    <div class="logo">
        <h1><a href="index.html"><img src="fotos/logo_BELLAVIST_blanco.png" alt="LogoMenu"></a></h1>
    </div>
    <nav>
        <ul>
            <li><a href="index.jsp">Inicio</a></li>
            <li><a href="servicios.html">Servicios</a></li>
            <li><a href="Habitaciones/habitaciones.html">Habitaciones</a></li>
            <li><a href="contacto.jsp">Contáctanos</a></li>
            <li>
                <button><span><a href="reservar.html">Reservar</a></span></button>
            </li>
            <li id="flags">
                <!-- Menú de idiomas -->
                <select id="languageMenu" class="text-gray-700 bg-white border border-gray-300 rounded-md py-2 px-4">
                    <option value="es" selected>Español</option>
                    <option value="en">Inglés</option>
                    <option value="fr">Francés</option>
                    <option value="de">Alemán</option>
                </select>
            </li>
        </ul>
    </nav>
</header>
    

    <main>
        <section class="hero">
            <div class="logo-container">
                <div class="background"></div>
                <img src="fotos/BELLAVISTA_LOGO_BLANCO.png" alt="logoHero">
            </div>
            
        </section>
        <section>
            <!-- Contenido adicional -->
            <div class="flex flex-col lg:flex-row">
                <div class="lg:w-1/2">
                 <img alt="A table with a sandwich, fries, a blue cocktail, and an orange drink" class="w-full h-full object-cover" src="fotos/FOTO_CACERES.jpg"/>
                </div>
                <div class="lg:w-1/2 p-8 lg:p-16">
                 <h2 class="text-sm font-bold uppercase tracking-widest text-gray-500 mb-2">
                  Vista General
                 </h2>
                 <h1 class="text-4xl font-bold mb-4">
                  La Belleza de la naturaleza
                 </h1>
                 <p class="text-lg mb-4">
                  Desayunar en la terraza, comer una pizza con sello napolitano, disfrutar de un cóctel con una de las mejores vistas panorámicas de Madrid o hacerte una foto durante el atardecer. Todo ello es posible en Pestana CR7 Gran Vía.
                 </p>
                 <p class="text-lg mb-4">
                  Descubre la Planta 9 CR7, toda una planta donde puedes disfrutar de una propuesta gastronómica con tres opciones diferentes: Pizzería, Sports Bar y Rooftop Bar (Sólo para adultos).
                 </p>
                 <a class="text-blue-600 underline mb-8 inline-block" href="#">
                  Leer más
                 </a>
                 <h3 class="text-xl font-bold mb-4">
                  Principales servicios y amenities
                 </h3>
                 <ul class="space-y-2">
                  <li class="flex items-center">
                   <i class="fas fa-swimming-pool mr-2">
                   </i>
                   Piscina exterior
                  </li>
                  <li class="flex items-center">
                   <i class="fas fa-umbrella-beach mr-2">
                   </i>
                   Rooftop
                  </li>
                  <li class="flex items-center">
                   <i class="fas fa-glass-martini-alt mr-2">
                   </i>
                   Bar
                  </li>
                  <li class="flex items-center">
                   <i class="fas fa-dumbbell mr-2">
                   </i>
                   Centro de fitness
                  </li>
                  <li class="flex items-center">
                   <i class="fas fa-utensils mr-2">
                   </i>
                   Restaurante
                  </li>
                  <li class="flex items-center">
                   <i class="fas fa-parking mr-2">
                   </i>
                   Parking (de pago)
                  </li>
                 </ul>
                </div>
               </div>
        </section>
        <section id="fotos_imagenes">
            <div class="container mx-auto px-4 py-8">
                <div class="flex justify-between items-center mb-8">
                 <h1 class="text-4xl font-light">
                  HABITACIONES 
                 </h1>
                </div>
                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
                 <div class="relative">
                  <img  src="../fotos/FOTO_SUITE_QUEEN.jpg"/>
                  <div class="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black to-transparent p-4">
                   <div class="flex items-center text-white mb-2">
                    <i class="fas fa-user mr-2">
                    </i>
                    <span>
                     2 HUESPEDES
                    </span>
                   </div>
                   <h2 class="text-white text-xl font-bold">
                    SUITE QUEEN de lujo
                   </h2>
                   <div class="flex space-x-2 mt-2">
                    <button class="bg-transparent border border-white text-white py-1 px-4">
                        <a href="/HOTELES/html/Habitaciones/suitequeen.html" id="foto-Vista-Rapida">Vista rápida</a>

                    </button>
                    <button id="foto-Reservar-ahora" class="bg-white text-black py-1 px-4">
                        <a href="reservar.html" >Reservar ahora</a>
                    </button>
                   </div>
                  </div>
                 </div>
                 <div class="relative">
                  <img src="fotos/pestana-cr7-gran-via-room-deluxe-bed.jpg"/>
                  <div class="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black to-transparent p-4">
                   <div class="flex items-center text-white mb-2">
                    <i class="fas fa-users mr-2">
                    </i>
                    <span>
                     3 HUESPEDES
                    </span>
                   </div>
                   <h2 class="text-white text-xl font-bold">
                    SUITE KING de Lujo
                   </h2>
                   <div class="flex space-x-2 mt-2">
                    <button class="bg-transparent border border-white text-white py-1 px-4">
                        <a href="/HOTELES/html/Habitaciones/suiteking.html" id="foto-Vista-Rapida">Vista rápida</a>

                    </button>
                    <button id="foto-Reservar-ahora" class="bg-white text-black py-1 px-4">
                        <a href="reservar.html">Reservar ahora</a>
                    </button>
                   </div>
                  </div>
                 </div>
                 <div class="relative">
                  <img src="fotos/FOTO1_SUITE_KING_BALCON.jpeg"/>
                  <div class="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black to-transparent p-4">
                   <div class="flex items-center text-white mb-2">
                    <i class="fas fa-users mr-2">
                    </i>
                    <span>
                        3 HUESPEDES
                    </span>
                   </div>
                   <h2 class="text-white text-xl font-bold">
                    SUITE KING de Lujo + BALCON
                   </h2>
                   <div class="flex space-x-2 mt-2">
                    <button class="bg-transparent border border-white text-white py-1 px-4">
                     <a href="/HOTELES/html/Habitaciones/suitekingbalcon.html" id="foto-Vista-Rapida">Vista rápida</a>
                    </button>
                    <button id="foto-Reservar-ahora" class="bg-white text-black py-1 px-4">
                        <a href="reservar.html">Reservar ahora</a>
                    </button>
                   </div>
                  </div>
                 </div>
                 
        </section>
    </main>

   
         <footer class="py-8" style="background-color: #0c1401;">
          <div class="container mx-auto px-4">
           <div class="flex flex-wrap justify-between">
            <!-- About Us Section -->
            <div class="w-full md:w-1/4 mb-6 md:mb-0">
             <h2 class="text-xl font-bold mb-4">
                QUIÉNES SOMOS
             </h2>
             <p class="text-gray-400">
                En nuestro hotel, estamos comprometidos con el planeta y el futuro el lujo y la sostenibilidad.
                Creemos firmemente en un modelo de hospitalidad que respeta el entorno y las comunidades locales,
                ofreciendo a nuestros huéspedes una experiencia única, responsable y consciente con el medio ambiente.
             </p>
            </div>
            <!-- Quick Links Section -->
            <div class="w-full md:w-1/4 mb-6 md:mb-0">
             <h2 class="text-xl font-bold mb-4">
              Enlaces
             </h2>
             <ul>
              <li class="mb-2">
               <a class="text-gray-400 hover:text-white"  href="#">
                Home
               </a>
              </li>
              <li class="mb-2">
               <a class="text-gray-400 hover:text-white"  href="#">
                Sobre nosotros
               </a>
              </li>
              <li class="mb-2">
               <a class="text-gray-400 hover:text-white" href="#">
                Servicios
               </a>
              </li>
              <li class="mb-2">
               <a class="text-gray-400 hover:text-white"href="#">
                Contacto
               </a>
              </li>
             </ul>
            </div>
            <!-- Latest News Section -->
            <div class="w-full md:w-1/4 mb-6 md:mb-0">
             <h2 class="text-xl font-bold mb-4">
              Latest News
             </h2>
             <ul>
              <li class="mb-2">
               <a class="text-gray-400 hover:text-white"  href="#">
                Quienes somos
               </a>
              </li>
              <li class="mb-2">
               <a class="text-gray-400 hover:text-white" href="#">
                Hsitoria
               </a>
              </li>
              <li class="mb-2">
               <a class="text-gray-400 hover:text-white"  href="#">
                Sostenibilidad
               </a>
              </li>
              <li class="mb-2">
               <a class="text-gray-400 hover:text-white"  href="#">
                MSV
               </a>
              </li>
             </ul>
            </div>
            <!-- Contact Us Section -->
            <div class="w-full md:w-1/4 mb-6 md:mb-0">
             <h2 class="text-xl font-bold mb-4">
              Contact Us
             </h2>
             <p class="text-gray-400 hover:text-white"ver:text-white" >
              <i class="fas fa-map-marker-alt mr-2">
              </i>
              1234 Street Name, City, State, 12345
             </p>
             <p class="text-gray-400 hover:text-white"ver:text-white"  >
              <i class="fas fa-phone-alt mr-2">
              </i>
              (+34) 666-666-666
             </p>
             <p class="text-gray-400 hover:text-white"ver:text-white" >
              <i class="fas fa-envelope mr-2">
              </i>
              BellaVista@info.com
             </p>
            </div>
           </div>
           <div class="flex justify-between items-center mt-8">
            <!-- Social Media Links -->
            <div>
             <a class="text-gray-400 hover:text-white" href="#">
              <i class="fab fa-facebook-f">
              </i>
             </a>
             <a class="text-gray-400 hover:text-white" href="#">
              <i class="fab fa-twitter">
              </i>
             </a>
             <a class="text-gray-400 hover:text-white" href="#">
              <i class="fab fa-instagram">
              </i>
             </a>
             <a class="text-gray-400 hover:text-white" href="#">
              <i class="fab fa-linkedin-in">
              </i>
             </a>
            </div>
            <!-- Logo -->
            <div>
             <img width="140px" height="70px" alt="Company logo with a simple and elegant design" src="fotos/BELLAVISTA_LOGO_BLANCO.png"/>
            </div>
           </div>
          </div>
         </footer>
       

    <script src="WEB-INF/js/menu.js"></script>
</body>
</html>