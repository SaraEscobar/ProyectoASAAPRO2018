//<!-- Script para ocultar y desocultar mi tabla -->

	function showContent() {
		element = document.getElementById("content");
		check = document.getElementById("check");
		if (check.checked) {
			element.style.display = 'block';
		} else {
			element.style.display = 'none';
		}
	}


	 //Scrip para seleccionar un solo checkboxs y para ocultar y desocultar la busqueda por nombre
    function showContentNomAd(){
    $("input:checkbox").on('click', function() {
    	// en el controlador,"this" se refiere a la casilla en la que se hizo clic
    	  var $box = $(this);
    	  if ($box.is(":checked")) {
    	    var group = "input:checkbox[name='" + $box.attr("name") + "']";
    	    $(group).prop("checked", false);
    	    $box.prop("checked", true);
    	    element = document.getElementById("txtNombreAd");
    		check = document.getElementById("checkName");
    		if (check.checked) {
    			element.style.display = 'block'; //si esta bloqueado te muestra los elementos
    			
    		} else {
    			element.style.display = 'none';//no muestra
    		}
    	  } else {
    	    $box.prop("checked", false);
    	  }
    
    	});
    }

//<!--  Script para ocultar y desocultar la busqueda por numero de empleado y para seleccionar un solo checkboxs-->

	function showContentNoEmpleado() {
		
		 $("input:checkbox").on('click', function() {
		    	// en el controlador,"this" se refiere a la casilla en la que se hizo clic
		    	  var $box = $(this);
		    	  if ($box.is(":checked")) {
		    	    var group = "input:checkbox[name='" + $box.attr("name") + "']";
		    	    $(group).prop("checked", false);
		    	    $box.prop("checked", true);
		    	    element = document.getElementById("txtNoE");
		    		check = document.getElementById("checkNoE");
		    		if (check.checked) {
		    			element.style.display = 'block'; //si esta bloqueado te muestra los elementos
		    			
		    		} else {
		    			element.style.display = 'none';//no muestra
		    		}
		    	  } else {
		    	    $box.prop("checked", false);
		    	  }
		    
		    	});
		
	}
	



//<!--  Script para ocultar y desocultar la busqueda por cargo de empleado-->

	function showContentCargo() {
		
		 $("input:checkbox").on('click', function() {
		    	// en el controlador,"this" se refiere a la casilla en la que se hizo clic
		    	  var $box = $(this);
		    	  if ($box.is(":checked")) {
		    	    var group = "input:checkbox[name='" + $box.attr("name") + "']";
		    	    $(group).prop("checked", false);
		    	    $box.prop("checked", true);
		    	    element = document.getElementById("divCargo");
		    		check = document.getElementById("checkCargo");
		    		if (check.checked) {
		    			element.style.display = 'block'; //si esta bloqueado te muestra los elementos
		    			
		    		} else {
		    			element.style.display = 'none';//no muestra
		    		}
		    	  } else {
		    	    $box.prop("checked", false);
		    	  }
		    
		    	});
	}
	
   

//<!--  Script para ocultar y desocultar la busqueda por area-->

	function showContentArea() {
		 $("input:checkbox").on('click', function() {
		    	// en el controlador,"this" se refiere a la casilla en la que se hizo clic
		    	  var $box = $(this);
		    	  if ($box.is(":checked")) {
		    	    var group = "input:checkbox[name='" + $box.attr("name") + "']";
		    	    $(group).prop("checked", false);
		    	    $box.prop("checked", true);
		    	    element = document.getElementById("divArea");
		    		check = document.getElementById("checkArea");
		    		if (check.checked) {
		    			element.style.display = 'block'; //si esta bloqueado te muestra los elementos
		    		} else {
		    			element.style.display = 'none';//no muestra
		    		}
		    	  } else {
		    	    $box.prop("checked", false);
		    	  }
		    	});
	}
	 

//<!--  Script para ocultar y desocultar la busqueda por estatus-->

	function showContentStatus() {
		
		 $("input:checkbox").on('click', function() {
		    	// en el controlador,"this" se refiere a la casilla en la que se hizo clic
		    	  var $box = $(this);
		    	  if ($box.is(":checked")) {
		    	    var group = "input:checkbox[name='" + $box.attr("name") + "']";
		    	    $(group).prop("checked", false);
		    	    $box.prop("checked", true);
		    	    element = document.getElementById("divStatus");
		    		check = document.getElementById("checkStatus");
		    		if (check.checked) {
		    			element.style.display = 'block'; //si esta bloqueado te muestra los elementos
		    			
		    		} else {
		    			element.style.display = 'none';//no muestra
		    		}
		    	  } else {
		    	    $box.prop("checked", false);
		    	  }
    	});
    }
	
    
	
	
	//PROVEEDORES
	
	
	//<!--  Script para ocultar y desocultar la busqueda por nombre de proveedor-->

	function showContentNomPro() {
		element = document.getElementById("divNomPro");
		check = document.getElementById("checkNomPro");
		if (check.checked) {
			element.style.display = 'block';
		} else {
			element.style.display = 'none';
		}
	}
	
	
	//<!--  Script para ocultar y desocultar la busqueda por RFC-->

	function showContentRFC() {
		element = document.getElementById("txtrfc");
		check = document.getElementById("checkrfc");
		if (check.checked) {
			element.style.display = 'block';
		} else {
			element.style.display = 'none';
		}
	}
	
	
	//<!--  Script para ocultar y desocultar la busqueda por nombre de representante-->

	function showContentNomRep() {
		element = document.getElementById("txtNomRep");
		check = document.getElementById("checkNomRep");
		if (check.checked) {
			element.style.display = 'block';
		} else {
			element.style.display = 'none';
		}
	}

	//<!--  Script para hacer la comparacion entre la insercion de contraseña-->
	
	function comprobarClave(){
	    contraseña = document.f1.contraseña.value
	    verifcontraseña = document.f1.verifcontraseña.value

	    if (contraseña == verifcontraseña)
	    	alert("Las contraseñas coinciden")
	    else
	       alert("Las contraseñas no coinciden vuelva a interntarlo")
	} 
	
	//<!--  Script para hacer la comparacion de seleccionar solo un checksbox-->
    function comprobar(checkbox){
        otro = checkbox.parentNode.querySelector("[type=checkbox]:not(#" + checkbox.id + ")");
     
        if (otro.checked){
            otro.checked = false;
        }
    }
 
  //Scrip para seleccionar un solo checkboxs
    function showContentGrado(){
    $("input:checkbox").on('click', function() {
    	  // in the handler, 'this' refers to the box clicked on
    	  var $box = $(this);
    	  if ($box.is(":checked")) {
    	    var group = "input:checkbox[name='" + $box.attr("name") + "']";
    	    $(group).prop("checked", false);
    	    $box.prop("checked", true);
    	  } else {
    	    $box.prop("checked", false);
    	  }
    
    	});
    }
    
    function showContentResumen(){
        $("input:checkbox").on('click', function() {
        	  // in the handler, 'this' refers to the box clicked on
        	  var $box = $(this);
        	  if ($box.is(":checked")) {
        	    var group = "input:checkbox[name='" + $box.attr("name") + "']";
        	    $(group).prop("checked", false);
        	    $box.prop("checked", true);
        	  } else {
        	    $box.prop("checked", false);
        	  }
        
        	});
        }
    
    
    function mostrarReferencia(){
    	//Si la opcion con id Conocido_1 (dentro del documento > formulario con name fcontacto >     y a la vez dentro del array de Conocido) esta activada
    	if (document.fcontacto.Conocido[1].checked == true) {
    	//muestra (cambiando la propiedad display del estilo) el div con id 'desdeotro'
    	document.getElementById('desdeotro').style.display='block';
    	//por el contrario, si no esta seleccionada
    	} else {
    	//oculta el div con id 'desdeotro'
    	document.getElementById('desdeotro').style.display='none';
    	}
    	}
    
