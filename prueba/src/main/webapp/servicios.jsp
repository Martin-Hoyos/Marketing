<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Hotel Bellavista</title>
    <link rel="icon" type="image/png" href="<%= request.getContextPath() %>/fotos/logo_BELLAVIST_blanco.png" />
    <link rel="stylesheet" href="css/servicios.css">
</head>
<body>
   
    
<header>
    <div class="logo">
        <a href="index.jsp"><img src="fotos/logo_BELLAVIST_blanco.png" alt="Logo Bellavista"></a>
    </div>
    <nav>
        <ul>
            <li><a href="index.jsp">Inicio</a></li>
            <li><a href="#">Servicios</a></li>
            <li><a href="#">Habitaciones</a></li>
            <li><a href="contacto.jsp">Contáctanos</a></li>
            <li><button><a href="reservar.jsp">Reservar</a></button></li>
        </ul>
    </nav>
</header>

<h1>Deja tu Reseña del Hotel</h1>
<form action="comentario" method="post" class="speaker-form">
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" placeholder="Ingresa tu nombre" required>

    <label for="email">Correo Electrónico:</label>
    <input type="email" id="email" name="email" placeholder="Ingresa tu correo electrónico" required>

    <label for="puntuacion">Puntuación:</label>
    <select id="puntuacion" name="puntuacion" required>
        <option value="5">5 - Excelente</option>
        <option value="4">4 - Muy bueno</option>
        <option value="3">3 - Bueno</option>
        <option value="2">2 - Regular</option>
        <option value="1">1 - Malo</option>
    </select>

    <label for="comentario">Comentario:</label>
    <textarea id="comentario" name="comentario" rows="4" placeholder="Escribe tus comentarios" required></textarea>

    <button type="submit">Enviar Reseña</button>
</form>
</body>
</html>
