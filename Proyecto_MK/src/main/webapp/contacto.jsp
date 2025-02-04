<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contacto - BELLAVISTA</title>
<link rel="stylesheet" href="css\style_contacto.css">
<script src="https://cdn.tailwindcss.com"> </script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap" rel="stylesheet"/>
</head> 
    
<script src="WEB-INF/js/menu_idiomas.js">
</script>
<body>
	<script>
    // Código JS para la comparación de imágenes
    document.addEventListener('DOMContentLoaded', function () {
        const slider = document.querySelector('.custom-handle');
        const firstImage = document.querySelector('.c-mapimg-slider__first');
        const secondImage = document.querySelector('.c-mapimg-slider__second');
        
        let isDragging = false;

        slider.addEventListener('mousedown', (e) => {
            isDragging = true;
            document.body.style.cursor = 'ew-resize';
        });

        document.addEventListener('mousemove', (e) => {
            if (!isDragging) return;

            const sliderRect = slider.parentElement.getBoundingClientRect();
            const offsetX = e.clientX - sliderRect.left;
            const percentage = (offsetX / sliderRect.width) * 100;

            firstImage.style.clip = `rect(0, ${percentage}%, 100%, 0)`;
            secondImage.style.clip = `rect(0, 100%, 100%, ${percentage}%)`;
            slider.style.left = `${percentage}%`;
        });

        document.addEventListener('mouseup', () => {
            isDragging = false;
            document.body.style.cursor = 'default';
        });

        // So the slider is initialized at the correct position on page load
        window.dispatchEvent(new Event('mousemove'));
    });
</script>
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
	    <div class="col-12 col-sm">
	    <c-map-img-slider class="d-block o-cont-fullw o-cont-sm-fullw__right">
	        <img-comparison-slider class="c-mapimg-slider rendered" tabindex="0">
	            <!-- Imagen 1: Hotel -->
	            <img slot="first" width="100%" src="fotos/hotel1.png" alt="Imagen del hotel">
	            <!-- Imagen 2: Mapa o ubicación -->
	            <img slot="second" width="100%" src="fotos/maps.png" alt="Ubicación del hotel">
	            <!-- Barra de comparación -->
	            <svg slot="handle" xmlns="http://www.w3.org/2000/svg" width="500" viewBox="0 0 100 6" value="65" class="custom-handle">
	                <path d="M37.3,3l2.1,1.8V1.2L37.3,3z" fill="currentColor"></path>
	                <path d="M62.6,3l-2.1-1.8v3.6L62.6,3z" fill="currentColor"></path>
	                <circle cx="50" cy="3.1" r="1.3" fill="currentColor" stroke="black" stroke-width=".25"></circle>
	            </svg>
	        </img-comparison-slider>
	    </c-map-img-slider>
		</div>
		<div class="col-12 col-sm">
	    <c-map-img-slider class="d-block o-cont-fullw o-cont-sm-fullw__right">
	        <img-comparison-slider class="c-mapimg-slider rendered" tabindex="0">
	            <!-- Imagen 1: Hotel -->
	            <img slot="first" width="100%" src="fotos/hotel2.png" alt="Imagen del hotel">
	            <!-- Imagen 2: Mapa o ubicación -->
	            <img slot="second" width="100%" src="fotos/maps.png" alt="Ubicación del hotel">
	            <!-- Barra de comparación -->
	            <svg slot="handle" xmlns="http://www.w3.org/2000/svg" width="500" viewBox="0 0 100 6" value="65" class="custom-handle">
	                <path d="M37.3,3l2.1,1.8V1.2L37.3,3z" fill="currentColor"></path>
	                <path d="M62.6,3l-2.1-1.8v3.6L62.6,3z" fill="currentColor"></path>
	                <circle cx="50" cy="3.1" r="1.3" fill="currentColor" stroke="black" stroke-width=".25"></circle>
	            </svg>
	        </img-comparison-slider>
	    </c-map-img-slider>
		</div>
		 <div class="col-12 col-sm">
	    <c-map-img-slider class="d-block o-cont-fullw o-cont-sm-fullw__right">
	        <img-comparison-slider class="c-mapimg-slider rendered" tabindex="0">
	            <!-- Imagen 1: Hotel -->
	            <img slot="first" width="100%" src="fotos/hotel3.png" alt="Imagen del hotel">
	            <!-- Imagen 2: Mapa o ubicación -->
	            <img slot="second" width="100%" src="fotos/maps.png" alt="Ubicación del hotel">
	            <!-- Barra de comparación -->
	            <svg slot="handle" xmlns="http://www.w3.org/2000/svg" width="500" viewBox="0 0 100 6" value="65" class="custom-handle">
	                <path d="M37.3,3l2.1,1.8V1.2L37.3,3z" fill="currentColor"></path>
	                <path d="M62.6,3l-2.1-1.8v3.6L62.6,3z" fill="currentColor"></path>
	                <circle cx="50" cy="3.1" r="1.3" fill="currentColor" stroke="black" stroke-width=".25"></circle>
	            </svg>
	        </img-comparison-slider>
	    </c-map-img-slider>
		</div>
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
        if (window.scrollY > -1) { 
            header.classList.add('visible');
        } else {
            header.classList.remove('visible');
        }
    });
	</script>
</body>