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
<title>Proveedores</title>

<!-- CSS -->
<link href="/favicon.ico" rel="shortcut icon">
<link href="https://framework-gb.cdn.gob.mx/assets/styles/main.css"
	rel="stylesheet">
<script type="text/javascript" src="functions/functions.js"></script>

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
		<form action="proveedores.jsp" method="POST"
			onsumbit="t¿return valideDatod();">
			
			<ol class="breadcrumb">
				<li><a href="http://www.gob.mx/"><i class="icon icon-home"></i></a></li>
				<li><a href="menuInicio.jsp">Inicio</a></li>
				<li class="active">Catalogo</li>
				<li class="active">Proveedores</li>
				<li class="active">Lista de Datos</li>
			</ol>
			<!-- END Breadcrumb -->
			<!-- Contenido -->
			<main class="page">
			<table>
				<tr>
					<td><br></br> <input aling="right" type="button"
						class="btn btn-primary" name="agregarPorveedor" onclick="Login()"
						value="Agregar Porveedor"></input> <script
							language="JavaScript">
							function Login() {
								window.location = "agregarProveedor.jsp";
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
								<label> <input type="checkbox" name="checkNomPro"
									id="checkNomPro" value="1"
									onchange="javascript:showContentNomPro()" /> Nombre
								</label> <br></br>
							</div>
						</TD>
						<TD>
							<div id="divNomPro" style="display: none;">
								<select class="form-control" name="cboProveedor" id="cboProveedor"
									background="green">
									<option>**Selecciones**</option>
									<%
										String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
										String url = "jdbc:sqlserver://ARANGELALV:1433;databaseName=AdminProveedores;user=sa;password=1695662Sara";
										String sql = "select nombre_c_proveedor from apro_c_proveedor";
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
									name="busquedaRFC" id="busquedaRFC">
									Buscar<span class="glyphicon glyphicon-search"> </span>
							
								</button>
							</div>
						</TD>
					</TR>
					
					<TR>
						<TD>
							<div class="checkbox">
								<label> <input type="checkbox" name="checkrfc"
									id="checkrfc" value="1"
									onchange="javascript:showContentRFC()" /> RFC
								</label> <br></br>
							</div>
						</TD>
						<TD>
							<div id="txtrfc" style="display: none;">
								<input class="form-control" placeholder="Ingrese RFC"
									name="nombrerfc" type="text"> <br></br>
								<button class="btn btn-primary pull-right" type="submit"
									name="busquedarfc" id="busquedarfc">
									Buscar<span class="glyphicon glyphicon-search"> </span>
								</button>
							</div>
						</TD>
					</TR>
						
					<TR>
						<TD>
							<div class="checkbox">
								<label> <input type="checkbox" name="checkNomRep"
									id="checkNomRep" value="1"
									onchange="javascript:showContentNomRep()" /> Nombre del Representante
								</label> <br></br>
							</div>
						</TD>
						<TD>
							<div id="txtNomRep" style="display: none;">

								<input class="form-control"
									placeholder="Ingrese Nombre de Representante" type="text"
									name="BusquedaNomRep"> <br></br>
								<button class="btn btn-primary pull-right" type="submit"
									name="busquedaNomRep" id="busquedaNomRep">
									Buscar<span class="glyphicon glyphicon-search"> </span>
								</button>
							</div>
						</TD>
					</TR>
				</table>
			</div>

			<!-- Resultado de busqueda por nombre -->
			<center>
				<table width="80%" height="20" border="1" align="center"
					cellpadding="3" cellspacing="0">
					<tbody id="tablaProveedor">
						<tr id="tablaProveedor">
							<td bgcolor="#DDDDDD" style="color: #000000">RFC</td>
							<td bgcolor="#DDDDDD" style="color: #000000">Nombre de Proveedor</td>
							<td bgcolor="#DDDDDD" style="color: #000000">Nombre de Representante</td>
							<td bgcolor="#DDDDDD" style="color: #000000">Apellido Paterno</td>
							<td bgcolor="#DDDDDD" style="color: #000000">Apellido Materno</td>
							<td bgcolor="#DDDDDD" style="color: #000000">Teléfono</td>
							<td bgcolor="#DDDDDD" style="color: #000000">Extensión</td>
							</tr>
					<%
					String drivernom = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
					String urlnom = "jdbc:sqlserver://ARANGELALV:1433;databaseName=AdminProveedores;user=sa;password=1695662Sara";
						String sqlnom = "execute BusquedaNombProv '" + request.getParameter("cboProveedor") + "'";
						Class.forName(drivernom);
						Connection connom = DriverManager.getConnection(urlnom);
						PreparedStatement psnom = connom.prepareStatement(sqlnom);
						ResultSet rsnom = psnom.executeQuery();
						while (rsnom.next() == true) {
					%><tr>
						    <td><%=rsnom.getString(1)%></td>
							<td><%=rsnom.getString(2)%></td>
							<td><%=rsnom.getString(3)%></td>
							<td><%=rsnom.getString(4)%></td>
							<td><%=rsnom.getString(5)%></td>
							<td><%=rsnom.getString(6)%></td>
							<td><%=rsnom.getString(7)%></td>
							
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</center>
			<!-- fin del resultado de busqueda por nombre -->
			
			
			
			
		</form>
		
	</div>
	<div class="container">
		<h3>REGISTRO DE PROVEEDORES DE ASA</h3>
		<p style="color: white">
			************************Imagernes e
			informacion*********************** <br></br> <a href="#">Registro
				de administradores</a> ...
	</div>


	<!-- JS -->
	<script src="https://framework-gb.cdn.gob.mx/gobmx.js"></script>
</body>
</html>