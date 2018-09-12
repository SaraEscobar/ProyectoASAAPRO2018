<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Agregar Porveedor</title>
<!-- CSS -->
<link href="/favicon.ico" rel="shortcut icon">
<link href="https://framework-gb.cdn.gob.mx/assets/styles/main.css"
	rel="stylesheet" />
<link href="calendario_dw/calendario_dw-estilos.css" type="text/css"
	rel="STYLESHEET" />

<!-- link para jcalendar css -->
<link rel="stylesheet" href="css/jquery-ui.min.css" />

<!-- script para jcalendar -->
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>

<!-- <script src="https://www.gob.mx/cms/application.js"></script>  -->
<script
	src="https://framework-gb.cdn.gob.mx/assets/scripts/jquery-ui-datepicker.js"></script>

<!-- Respond.js soporte de media queries para Internet Explorer 8 -->
<!-- ie8.js EventTarget para cada nodo en Internet Explorer 8 -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/ie8/0.2.2/ie8.js"></script>
    <![endif]-->
     <script type="text/javascript">

        $(document).ready(function(){

            $.datepicker.regional.es = {

              closeText: "Cerrar",

              prevText: "Ant",

              nextText: "Sig",

              currentText: "Hoy",

              monthNames: ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"],

              monthNamesShort: ["Ene","Feb","Mar","Abr","May","Jun","Jul","Ago","Sep","Oct","Nov","Dic"],

              dayNames: ["Domingo","Lunes","Martes","Mi&eacute;rcoles","Jueves","Viernes","S&aacute;bado"],

              dayNamesShort: ["Dom","Lun","Mar","Mi&eacute;","Juv","Vie","S&aacute;b"],

              dayNamesMin: ["Dom","Lun","Mar","Mi&eacute","Jue","Vie","S&aacute;b"],

              weekHeader: "Sm",

              dateFormat: "yy/mm/dd",

              firstDay: 1,

              isRTL: false,

              showMonthAfterYear: false,

              yearSuffix: ""};

            $.datepicker.setDefaults($.datepicker.regional.es);

            $( "#fechaInicio" ).datepicker();
            
            $( "#fechaFinal" ).datepicker();

            $('[data-toggle="tooltip"]').tooltip();

          });

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
		<form action="solicitudes.jr" method="POST"
			onsumbit="t¿return valideDatod();">
			<ol class="breadcrumb">
				<li><a href="http://www.gob.mx/"><i class="icon icon-home"></i></a></li>
				<li><a href="menuInicio.jsp">Inicio</a></li>
				<li class="active">Proveedores</li>
				<li class="active">Edición de Datos</li>
			</ol>
			<!-- END Breadcrumb -->
			<br></br>
		</form>
	</div>

	<!-- Contenido -->
	<main class="page">
	<div class="container">
		<!-- Static navbar -->
		<!-- Main component for a primary marketing message or call to action -->
		<div class="jumbotron">
			<h1>Proveedores</h1>
			<p>Datos del Porveedor</p>

		</div>
	</div>
	<!-- /container --> <!--/.container-fluid --> <!-- Main component for a primary marketing message or call to action -->

	<div class="container">
		<div class="jumbotron">
			
			<div class="form-group row">
				
				<br />
				<!------ Datos de Usuario del Sistema------>
				<form action="servletAddProveedor" method="post" class="clearfix" role="main" name=f1>
					
				
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label class="control-label" name="nombPorveedor" for="nombProveedor">Nombre del Proveedor
								<span class="form-text"></span>: <span
									data-toggle="tooltip" data-placement="top" title="nombre_c_proveedor"></span>
								</label> <input class="form-control" name="nombre_c_proveedor"
									path="nombre_c_proveedor" type="text" placeholder="Aeropuertos y Servicios Auxiliares" required>
							</div>
						</div>
						<div class="col-md-8">
							<div class="col-md-4">
							<div class="form-group">
								<label class="control-label" for="name">RFC<span
									class="form-text"></span>:
								</label> <input class="form-control" name="rfc_proveedor"
									placeholder="RFC del Proveedor" id="rfc_proveedor"
									type="text" required /><span aria-hidden="true" >
							</div>
						</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label class="control-label" for="name">Nombre(s)<span
									class="form-text"></span>:
								</label> <input class="form-control" name="nombreResp_c_proveedor"
									placeholder="Nombre Representante" id="nombreResp_c_proveedor"
									type="text" required /><span aria-hidden="true">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label class="control-label" for="papellido">Primer
									apellido<span class="form-text"></span>:
								</label> <input class="form-control" name="apePatResp_c_proveedor"
									placeholder="Ingresa tu primer apellido" id="apePatResp_c_proveedor"
									type="text" required/><span aria-hidden="true">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label class="control-label" for="sapellido">Segundo
									apellido:</label> <input class="form-control"
									name="apeMatResp_c_proveedor" placeholder="Segundo Apellido"
									id="apeMatResp_c_proveedor" type="text" required/>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<div class="form-group datepicker-group">
								<label class="control-label" for="calendar3">Telefono<span
									class="form-text">*</span>:
								</label> <input class="form-control" name="tel_c_proveedor"
									placeholder="55-55-55-55-55" id="tel_c_proveedor" type="text" required /><span
									aria-hidden="true"></span>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group datepicker-group">
								<label class="control-label" for="calendar3">Extension<span
									class="form-text">*</span>:
								</label> <input class="form-control" name="extension_c_proveedor"
									placeholder="11111" id="extension_c_proveedor" type="text" required/><span
									aria-hidden="true"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 col-md-offset-4">
							<input class="btn btn-primary" type="submit"
								value="Guardar">
							<input class="btn btn-primary" type="reset"
								value="Cancelar">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- /container --> </main>
	<!-- JS -->
	<script src="https://framework-gb.cdn.gob.mx/gobmx.js"></script>
	<!-- JS -->

</body>
</html>