<%@page import="mx.com.asa.servlets.usuarios"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- link para jcalendar css -->
<link rel="stylesheet" href="css/jquery-ui.min.css" />

<!-- script para jcalendar -->
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript">
history.forward();
</script>

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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="servletAddUser" method="post" name="prueba">
<table>
<tr>
<td>Nombre:</td>
<td><input type="text"  name="nombre" placeholder= "ingrese nombre" required="required" size="20"></td>
</tr>
<tr>
<td>Apellido:</td>
<td><input type="text" name="apellido" placeholder="ingrese apellido" required="required" size="20"></td>
</tr>
<tr>
<td>Edad:</td>
<td><input type="text" name="numero" placeholder="ingrese numero de telefono"  required="required" size="20"></td>
</tr>
<tr>
<td>Fecha de Inicio</td>
<td><input type="text" name="fechaInicio_admin" id="fechaInicio" placeholder="DD/MM/AAAA" required="required" size="20">
</td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="Registrar"></td>
</tr>
</table>

</form>
</body>
</html>