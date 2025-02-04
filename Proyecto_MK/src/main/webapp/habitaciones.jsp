<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BELLAVISTA</title>
</head>
    <link rel="stylesheet" href="css/styles_habitaciones.css">
  <script src="https://cdn.tailwindcss.com"> </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap" rel="stylesheet"/>
    
    <script src="WEB-INF/js/menu_idiomas.js">
    </script>
<body>
    
<header class="hidden-header">
    <div class="logo">
        <h1><a href="index.jsp"><img src="fotos/logo_BELLAVIST_blanco.png" alt="LogoMenu"></a></h1>
    </div>
    <nav>
        <ul>
                <li><a href="index.jsp">Inicio</a></li>
            <li><a href="Servicios_pricipal.jsp">Servicios</a></li>
            <li><a href="habitaciones.jsp">Habitaciones</a></li>
            <li><a href="contacto.jsp">Contáctanos</a></li>
            <li>
                <button><span><a href="reservar.jsp">Reservar</a></span></button>
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
        <section id="fotos_imagenes">
            <div class="container mx-auto px-4 py-8">
                <div class="flex justify-center items-center mb-8">
                    <h1 class="text-4xl font-light">HABITACIONES</h1>
                </div>
        
                <!-- Suite Queen -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-8 items-center">
                    <div>
                        <a href="Habitaciones/suitequeen.jsp">
                            <img src="fotos/FOTO_SUITE_QUEEN.jpg" alt="Suite Queen de lujo" class="rounded-lg shadow-lg transform transition-transform duration-300 hover:scale-110">
                        </a>
                    </div>
                    <div class="pl-4">
                        <h2 class="text-2xl font-bold text-gray-800 mb-4">SUITE QUEEN de lujo</h2>
                        <p class="text-gray-600 mb-4">Disfruta de la comodidad y el lujo en nuestra Suite Queen diseñada para 2 huéspedes. Equipado con todas las comodidades modernas y un diseño elegante.</p>
                        <div class="flex space-x-4">
                            <button class="bg-transparent border border-gray-800 text-gray-800 py-2 px-4 rounded">
                                <a href="Habitaciones/suitequeen.jsp" id="foto-Vista-Rapida">Vista rápida</a>
                            </button>
                            <button class="bg-gray-800 text-white py-2 px-4 rounded">
                                <a href="reservar.jsp">Reservar ahora</a>
                            </button>
                        </div>
                    </div>
                </div>
        
                <!-- Suite King -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-8 items-center">
                    <div>
                        <a href="Habitaciones/suiteking.jsp">
                            <img src="fotos/pestana-cr7-gran-via-room-deluxe-bed.jpg" alt="Suite King de lujo" class="rounded-lg shadow-lg transform transition-transform duration-300 hover:scale-110">
                        </a>
                    </div>
                    <div class="pl-4">
                        <h2 class="text-2xl font-bold text-gray-800 mb-4">SUITE KING de Lujo</h2>
                        <p class="text-gray-600 mb-4">Ideal para 3 huéspedes, nuestra Suite King ofrece lujo, confort y espacio. Perfecta para quienes buscan una experiencia inolvidable.</p>
                        <div class="flex space-x-4">
                            <button class="bg-transparent border border-gray-800 text-gray-800 py-2 px-4 rounded">
                                <a href="Habitaciones/suiteking.jsp" id="foto-Vista-Rapida">Vista rápida</a>
                            </button>
                            <button class="bg-gray-800 text-white py-2 px-4 rounded">
                                <a href="reservar.jsp">Reservar ahora</a>
                            </button>
                        </div>
                    </div>
                </div>
        
                <!-- Suite King + Balcón -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-8 items-center">
                    <div>
                        <a href="Habitaciones/suitekingbalcon.jsp">
                            <img src="fotos/FOTO1_SUITE_KING_BALCON.jpeg" alt="Suite King con Balcón" class="rounded-lg shadow-lg transform transition-transform duration-300 hover:scale-110">
                        </a>
                    </div>
                    <div class="pl-4">
                        <h2 class="text-2xl font-bold text-gray-800 mb-4">SUITE KING de Lujo + BALCÓN</h2>
                        <p class="text-gray-600 mb-4">Una experiencia superior para 3 huéspedes, nuestra Suite King con balcón ofrece vistas impresionantes y una estancia llena de lujo y confort.</p>
                        <div class="flex space-x-4">
                            <button class="bg-transparent border border-gray-800 text-gray-800 py-2 px-4 rounded">
                                <a href="Habitaciones/suitekingbalcon.jsp" id="foto-Vista-Rapida">Vista rápida</a>
                            </button>
                            <button class="bg-gray-800 text-white py-2 px-4 rounded">
                                <a href="reservar.jsp">Reservar ahora</a>
                            </button>
                        </div>
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
    <script >
    document.addEventListener('scroll', () => {
        const header = document.querySelector('.hidden-header');
        if (window.scrollY > 725) { 
            header.classList.add('visible');
        } else {
            header.classList.remove('visible');
        }
    });
	</script>
</body>
</html>