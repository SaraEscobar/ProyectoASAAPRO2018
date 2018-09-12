<%@page import="mx.com.asa.model.BeansFillTableAdmin"%>
<%@page import="mx.com.asa.servlets.fillTablaAdmin"%>
<%@page import="java.util.LinkedList"%>
<%@page import="mx.com.asa.model.BeansAdmin"%>
<%@page import="mx.com.asa.conexion.conexion"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="mx.com.asa.servlets.validaciones"%>
<%@page import="java.awt.Checkbox"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<title>Administradores</title>


<!-- CSS -->
<link href="/favicon.ico" rel="shortcut icon">
<link href="https://framework-gb.cdn.gob.mx/assets/styles/main.css"
	rel="stylesheet">
<script type="text/javascript" src="functions/functions.js"></script>
<script src="Scripts/jquery-3.3.1.js" type="text/javascript"></script>

<script type="text/javascript">
	function mostrarReferencia() {
		//Si la opcion con id Conocido_1 (dentro del documento > formulario con name fcontacto >     y a la vez dentro del array de Conocido) esta activada
		if (document.fcontacto.Conocido[1].checked == true) {
			//muestra (cambiando la propiedad display del estilo) el div con id 'desdeotro'
			document.getElementById('desdeotro').style.display = 'block';
			//por el contrario, si no esta seleccionada
		} else {
			//oculta el div con id 'desdeotro'
			document.getElementById('desdeotro').style.display = 'none';
		}
	}
</script>

</head>
<body>
	<nav class="navbar navbar-inverse sub-navbar navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#subenlaces">
					<span class="sr-only">Interruptor de Navegación</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<img align="left" src="img/logoASA2018.png"></img> <a
					class="navbar-brand" href="menuInicio.jsp">ASA</a>
			</div>
			<div class="collapse navbar-collapse" id="subenlaces">
				<ul class="nav navbar-nav navbar-right">

					<!-- visualiza el usuario activo verifica que funcione con nombre -->

					<!-- a style="color: white" ;  class="navbar-brand"><h4>
					Sesion Actual :
					<!-%=request.getParameter("usuario")%></h4></a-->


					<li><a href="administradores.jsp">Administradores</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">Catalogo
							<span class="caret"></span>
					</a>
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
	<div class="container">
		<form action="servletFillAdmin" method="POST"
			onsumbit="t¿return valideDatod();">
			<ol class="breadcrumb">
				<li><a href="http://www.gob.mx/"><i class="icon icon-home"></i></a></li>
				<li><a href="menuInicio.jsp">Inicio</a></li>
				<li class="active">Administradores</li>
				<li class="active">Lista de Datos</li>
			</ol>
			<!-- END Breadcrumb -->
			<!-- Contenido -->
			<main class="page">
			<table>
				<tr>
					<td><br></br> <input aling="right" type="button"
						class="btn btn-primary" name="agregarAdmin" onclick="Login()"
						value="Agregar Administrador"></input> <script
							language="JavaScript">
							function Login() {
								window.location = "agregarAdmin.jsp";
							}
						</script></td>
				</tr>
			</table>


			<div class="checkbox">
				<label> <input type="checkbox" name="check" id="check"
					value="1" onchange="javascript:showContent()" /> Busqueda Avanzada
				</label> <br></br>
			</div>

			<div id="content" style="display: none;">

				<table class="table table-bordered">
					<TR>
						<td BGCOLOR="#545454"></td>
						<td BGCOLOR="#545454"><CENTER>
								<h3>
									<p style="color: #fdfefe;">SELECCIONA TU BUSQUEDA</p>
								</h3>
							</CENTER></td>
					</TR>
					<TR>
						<TD>
							<div class="checkbox">
								<label> <input type="checkbox" name="check"
									id="checkName" value="1"
									onchange="javascript:showContentNomAd()" /> Nombre de
									Administrador
								</label> <br></br>
							</div>
						</TD>
						<TD>
							<div id="txtNombreAd" style="display: none;">
								<input class="form-control" placeholder="Ingrese Nombre"
									name="nombreAd" type="text"> <br></br>
								<button class="btn btn-primary pull-right" type="submit"
									name="busquedaNombreAd" id="busquedaNombreAd">
									Buscar<span class="glyphicon glyphicon-search"> </span>
								</button>
							</div>
						</TD>
					</TR>
					<TR>
						<TD>
							<div class="checkbox">
								<label> <input type="checkbox" name="check"
									id="checkNoE" value="1"
									onchange="javascript:showContentNoEmpleado()" /> Numero de
									Empleado
								</label> <br></br>
							</div>
						</TD>
						<TD>
							<div id="txtNoE" style="display: none;">

								<input class="form-control"
									placeholder="Ingrese No. de Empleado" type="text"
									name="BusquedaNoE"> <br></br>
								<button class="btn btn-primary pull-right" type="submit"
									name="busquedaNoE" id="busquedaNoE">
									Buscar<span class="glyphicon glyphicon-search"> </span>
								</button>
							</div>
						</TD>
					</TR>
					<TR>
						<TD>
							<div class="checkbox">
								<label> <input type="checkbox" name="check"
									id="checkCargo" value="1"
									onchange="javascript:showContentCargo()" /> Cargo del
									Administrador
								</label> <br></br>
							</div>
						</TD>
						<TD>
							<div id="divCargo" style="display: none;">

								<select class="form-control" name="cboCargo" id="cboCargo"
									background="green">
									<option>**Selecciones**</option>
									<%
										String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
										String url = "jdbc:sqlserver://ARANGELALV:1433;databaseName=AdminProveedores;user=sa;password=1695662Sara";
										String sql = "select cargo_admin from apro_c_admin";
										Class.forName(driver);
										Connection con = DriverManager.getConnection(url);
										PreparedStatement ps = con.prepareStatement(sql);
										ResultSet rs = ps.executeQuery();
										while (rs.next() == true) {
									%><option><%=rs.getString(1)%></option>
									<%
										}
									%>
								</select>
								<button class="btn btn-primary pull-right" type="submit"
									name="busquedaCargo" id="busquedaCargo">
									Buscar<span class="glyphicon glyphicon-search"> </span>

								</button>
							</div>
						</TD>
					</TR>
					<TR>
						<TD>
							<div class="checkbox">
								<label><input type="checkbox" name="check"
									id="checkArea" value="1"
									onchange="javascript:showContentArea()" /> Area </label> <br></br>
							</div>
						</TD>
						<TD>
							<div id="divArea" style="display: none;">
								<select class="form-control" name="cboArea" id="cboArea"
									background="green">
									<option>**Selecciona**</option>
									<%
										String driver2 = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
										String url2 = "jdbc:sqlserver://ARANGELALV:1433;databaseName=AdminProveedores;user=sa;password=1695662Sara";
										String sql2 = "select nombre_area from apro_c_area";
										Class.forName(driver2);
										Connection con2 = DriverManager.getConnection(url2);
										PreparedStatement ps2 = con2.prepareStatement(sql2);
										ResultSet rs2 = ps2.executeQuery();
										while (rs2.next() == true) {
									%><option><%=rs2.getString(1)%></option>
									<%
										}
									%>
								</select>
								<button class="btn btn-primary pull-right" type="submit"
									name="busquedaArea" id="busquedaArea">
									Buscar<span class="glyphicon glyphicon-search"> </span>
								</button>
							</div>
						</TD>
					</TR>
					<TR>
						<TD>
							<div class="checkbox">
								<label> <input type="checkbox" name="check"
									id="checkStatus" value="1"
									onchange="javascript:showContentStatus()"
									onchange="javascript:showContentStatusCheck()" />Estatus
								</label> <br></br>
							</div>
						</TD>
						<TD>
							<div name="divStatus" id="divStatus" style="display: none;">
								<select class="form-control">
									<option>**Selecciona**</option>
									<option>Alta</option>
									<option>Baja</option>

								</select>
								<button class="btn btn-primary pull-right" type="submit"
									name="busquedaStatus" id="busquedaStatus">
									Buscar<span class="glyphicon glyphicon-search"> </span>
								</button>
							</div>
						</TD>
					</TR>
				</table>
			</div>
			<!-- Resultado de busqueda por nombre -->
			<center>

				<script
					src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
				<div class="table-container">
					<table
						class="table table-hover table-custom border-radius-total-5 no-margin"
						id="tablaNombre">
						<thead class="backGris-light-be">
							<tr id="tablaNombre" class="s20">
								<th class="no-borders" bgcolor="#2E64FE">Usuario</th>
								<th class="no-borders" bgcolor="#2E64FE">password</th>
								<th class="no-borders" bgcolor="#2E64FE">Tipo de Usuario</th>
								<th class="no-borders" bgcolor="#2E64FE">No. Empleado</th>
								<th class="no-borders" bgcolor="#2E64FE">Roll</th>
								<th class="no-borders" bgcolor="#2E64FE">Nombre de Administrador</th>
								<th class="no-borders" bgcolor="#2E64FE">Primer Apellido</th>
								<th class="no-borders" bgcolor="#2E64FE">Segundo Apellido</th>
								<th class="no-borders" bgcolor="#2E64FE">Cargo</th>
								<th class="no-borders" bgcolor="#2E64FE">Area</th>
								<th class="no-borders" bgcolor="#2E64FE">Telefono</th>
								<th class="no-borders" bgcolor="#2E64FE">Extension</th>
								<th class="no-borders" bgcolor="#2E64FE">Fecha de Inicio</th>
								<th class="no-borders" bgcolor="#2E64FE">Fecha de Cierre</th>
								<th class="no-borders" bgcolor="#2E64FE">Estatus</th>
							</tr>
						</thead>
						<tbody class="backWhite">
							<tr class="s18 colorGrayLight">
							<%	
                          	
							BeansFillTableAdmin listaAdmin = new BeansFillTableAdmin();
						     LinkedList<BeansFillTableAdmin> lista = fillTablaAdmin.getAdmin(request.getParameter("nombreAd"));	
							for (int i = 0; i < lista.size(); i++) {
								
								out.println("<tr>");
								out.println("<td>" + lista.get(i).getTipoUsuario_admin() + "</td>");
								out.println("<td>" + lista.get(i).getNumeroEmpelado_admin() + "</td>");
								out.println("<td>" + lista.get(i).getRol_admin() + "</td>");
								out.println("<td>" + lista.get(i).getNombre_admin() + "</td>");
								out.println("<td>" + lista.get(i).getPrimerApellido_admin() + "</td>");
								out.println("<td>" + lista.get(i).getSegundoApellido_admin() + "</td>");
								out.println("<td>" + lista.get(i).getCargo_admin() + "</td>");
								out.println("<td>" + lista.get(i).getArea_admin() + "</td>");
								out.println("<td>" + lista.get(i).getTelefono_admin() + "</td>");
								out.println("<td>" + lista.get(i).getExtension_admin() + "</td>");
								out.println("<td>" + lista.get(i).getFechaInicio_admin() + "</td>");
								out.println("<td>" + lista.get(i).getFechaFinal_admin() + "</td>");
								out.println("<td>" + lista.get(i).getEstatus() + "</td>");
								out.println("<td>" + lista.get(i).getUser_admin() + "</td>");
								out.println("<td>" + lista.get(i).getPassword_admin() + "</td>");
								out.println("</tr>");
							}
							
							%>
					</table>				
					</div>
					
			</center>
			</main>
			<!-- fin del resultado de busqueda por nombre -->
		</form>
		
	</div>
	<div class="container">
		<h3>REGISTRO DE ADMINISTRADORES DE ASA</h3>
		<p style="color: white">
			************************Imagernes e	informacion*********************** <br></br> <a href="#">
			Registro de administradores</a> ...
				</div>


	<!-- JS -->
	<script src="https://framework-gb.cdn.gob.mx/gobmx.js"></script>
</body>
</html>