<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!--SIRVE PARA ELIMINAR HISTORIAL Y NO REGRESAR A LAS PÁGINAS DESDE EL NAVEGADOR CON LA URL -->
<script language="JavaScript">
	history.forward();
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="widt=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link href="/favicon.ico" rel="shortcut icon">
    <link href="https://framework-gb.cdn.gob.mx/assets/styles/main.css" rel="stylesheet">
<!-- link rel="stylesheet" type="text/css" href="css/estilo.css"-->
<!-- link rel="stylesheet" href="css/font-awesome.min.css"-->

<link href="https://framework-gb.cdn.gob.mx/assets/styles/main.css" rel="stylesheet">
</head>

<body>


<form class="form-inline" role="form">
<div class="form-group">

<title>Inicio</title>
<nav class="navbar navbar-inverse sub-navbar navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#subenlaces">
        <span class="sr-only">Interruptor de Navegación</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <img align="left" src="img/logoASA2018.png"></img>
      <a class="navbar-brand" href="menuInicio.jsp">ASA</a>
    </div>
    <div class="collapse navbar-collapse" id="subenlaces">
      <ul class="nav navbar-nav navbar-right">
     
     <!-- visualiza el usuario activo verifica que funcione con nombre -->
     
      <!-- a style="color: white" ;  class="navbar-brand"><h4>
					Sesion Actual :
					<!-%=request.getParameter("usuario")%></h4></a-->
		
					
        <li><a href="administradores.jsp">Administradores</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Catalogo <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="proveedores.jsp">Proveedores</a></li>
            <li><a href="#">Contratos</a></li>
            <li class="divider"></li>
            <li><a href="#">Pendiente</a></li>
          </ul>
          <li><a href="#">List Verificacion</a></li>
            <li><a href="#">List Seguimiento</a></li>
            <li><a href="#">Reportes</a></li>
            <li><a href="#">Indicadores</a></li>
      </ul>
    </div>
  </div>
</nav>
	<div class="info-container">
		<div class="info-main">
			<h3>INFORMACION DE ASA</h3>
			<p style="color: white";>
				************************Imagenes e informacion *********************** <br></br>
			<a href="#">Mas Informacion</a>
		</div>
	</div>
	<table>
		<tr>
			<td>
				<h3 style="color: #84c3be";>Direccion</h3> <span
				class="fa fa-map-marker" style="color: #000080";><p>Av. 602 161,
Zona Federal Aeropuerto Internacional Ciudad de México, Ciudad de Mexico. C.P. 15620</p></span> <span class="fa fa-phone"
				style="color: #000080";><p> +52 (55) 5133 1000 </p> 
				<p></span><span	class="fa fa-envelope" style="color: #000080";> <p>utransparencia@asa.gob.mx</p></span></p>
			</td>
			<td>
				<h3 style="color: #84c3be";>Sobre nosotros</h3>
				<p style="color: #000080";>Informacion sobre ASA</p>
			</td>
		</tr>
	</table>
		<table>
		<tr>
			<td><br></br> <input aling="right" type="button" name="salir"
				onclick="Login()" value="Cerrar Sesion"></input> <script
					language="JavaScript">
					function Login() {
						window.location = "index.jsp";
					}
				</script></td>
		</tr>
	</table>
	<br></br>
	</div>
		</form>
		
	<footer style="color:black";>
	<div class="footer-copy-redes">
		<div class="main-copy-redes">
			<div class="footer-copy" style="color: #c0c0c0">
				&copy;2018, Todos los derechos reservados -| ASA |.
				<div class="footer-redes">
					<a href="#" class="fa fa-facebook"></a> <a href="#"
						class="fa fa-twitter"></a> <a href="#" class="fa fa-youtube-play"></a>
					<a href="#" class="fa fa-github"></a>
				</div>
			</div>
		</div>
	</div>
	</footer>

	<!-- JS -->
    <script src="https://framework-gb.cdn.gob.mx/gobmx.js"></script>
    
</body>
</html>