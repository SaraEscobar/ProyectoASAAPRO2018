<%@page import="mx.com.asa.conexion.conexion"%>
<%@page import="java.sql.*"%>
<!--%@page import="com.microsoft.sqlserver.jdbc.*"%-->
<!-- %@page import="mx.com.asa.conexion"%-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/stylesFondos.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<title>ASA APRO</title>
</head>

<!--SIRVE PARA ELIMINAR HISTORIAL Y NO REGRESAR A LAS PÁGINAS DESDE EL NAVEGADOR CON LA URL -->
<script language="JavaScript">
	history.forward();
</script>

<body>
	<section id="home" data-type="" data-speed="10">
	<center>
		<article class="logoRedes">
		<div class="geek">
			ASA <br /> <span class="Anom">PROVEEDORES</span>
		</div>
		</article>
		<article class="logoRedes">
		<div class="geek1">
			</a>

		</div>
		</article>
		<article class="logoRedes">
		<div class="redes"></div>
		</article>
		<!-- <h2>Pagina: 1</h2>-->
		</article>
	</section>
	<br></br>
	<center>
	
		<form method="post">
			<center>
				<table>
					<tr>
						<td><input type="text" placeholder="&#128272; Usuario"
							name="usuario" class="Input" required="required" value=""><br></td>
							<br>
					</tr>
					
					<tr>
						<td><input type="password" placeholder="&#128272; Contraseña"
							name="password" class="Input" required="required" value=""><br></td>
							<br>
					</tr>
					<tr>
						<td>
						
							
								<input type="submit" name="busquedaContratos"
									id="busquedaContratos" value="ACCEDER"> 
									<br>
									<input type="reset" name="Borrar" id="Borrar" value="CANCELAR"
									class="boton">
									<br>	
						</td>
					</tr>
				</table>
			</center>
			<%
				if (request.getParameter("usuario") != "" && request.getParameter("password") != "") {
					conexion con= new conexion();
					con.comparar((request.getParameter("usuario")), (request.getParameter("password")));
					if (con.bandera == true) {
						request.getRequestDispatcher("menuInicio.jsp").forward(request, response);
					}
				}
			%>
			
		</form>
		

</body>
</html>