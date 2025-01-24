<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
    <link rel="stylesheet" href="css/servicios_principal.css">
<title>Insert title here</title>
</head>
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
<br><br><br><br><br><br>
    <div class="container">
        <h1>Servicios y Actividades</h1>

        <div class="section">
            <h2>Servicios Destacados</h2>
            <div class="services">
                <div class="card">
                    <img src="piscina.jpg" alt="Piscina exterior">
                    <h3>Piscina Exterior</h3>
                    <p>Relájate y disfruta del sol junto a nuestra amplia piscina con vistas impresionantes.</p>
                </div>
                <div class="card">
                    <img src="rooftop.jpg" alt="Rooftop">
                    <h3>Rooftop</h3>
                    <p>Experimenta la vista panorámica desde nuestro rooftop mientras disfrutas de un cóctel.</p>
                </div>
                <div class="card">
                    <img src="fitness.jpg" alt="Centro de fitness">
                    <h3>Centro de Fitness</h3>
                    <p>Mantente activo en nuestro gimnasio completamente equipado.</p>
                </div>
                <div class="card">
                    <img src="restaurante.jpg" alt="Restaurante">
                    <h3>Restaurante</h3>
                    <p>Degusta platos exquisitos elaborados con ingredientes frescos y locales.</p>
                </div>
            </div>
        </div>

        <div class="section">
            <h2>Actividades</h2>
            <div class="activities">
                <div class="card">
                    <img src="senderismo.jpg" alt="Senderismo">
                    <h3>Senderismo</h3>
                    <p>Explora rutas naturales que te conectarán con la belleza del entorno.</p>
                </div>
                <div class="card">
                    <img src="yoga.jpg" alt="Sesiones de yoga">
                    <h3>Sesiones de Yoga</h3>
                    <p>Encuentra tu equilibrio con nuestras sesiones de yoga al aire libre.</p>
                </div>
                <div class="card">
                    <img src="ciclismo.jpg" alt="Ciclismo">
                    <h3>Ciclismo</h3>
                    <p>Descubre la región en bicicleta con rutas diseñadas para todos los niveles.</p>
                </div>
                <div class="card">
                    <img src="nocturno.jpg" alt="Observación nocturna">
                    <h3>Observación Nocturna</h3>
                    <p>Admira el cielo estrellado en un ambiente tranquilo y único.</p>
                </div>
            </div>
        </div>
        <div class="section">
        	<h2>Reseñas</h2>
        	<a aria-label='Thanks' class='h-button centered' data-text='Dejar reseña' href='servicios.jsp'>
  <span>G</span>
  <span>R</span>
  <span>A</span>
  <span>C</span>
  <span>I</span>
  <span>A</span>
  <span>S</span>
</a>


        </div>
    </div>
</body>
</html>