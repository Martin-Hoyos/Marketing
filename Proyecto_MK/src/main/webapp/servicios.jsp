<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
</body>
</html>
