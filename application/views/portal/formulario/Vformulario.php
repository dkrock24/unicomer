


<!DOCTYPE html>
<html>
<head>
	<title>formulario</title>
	<script src="../../../../assets/plugins/jquery/jquery-1.11.1.min.js"></script>

	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

	<script>

  	$(document).ready(function(){
  		$("#crear").show();
		$("#actualizar").hide();
		$("#loading").hide();
  		$("#buscar").click(function(){
  			$("#crear").hide();
  			$("#loading").show();
  			$(".msj").empty();
        	var value = $("#dui").val();
        		//$(".msj").html(value);

        		  		//Buscar cliente

	        $.ajax({
	            url: "../../../backend/sucursales/Cindex/formulario/"+value,
	            type:"post",
	            dataType:'json',
	            cache: false,
	            success: function(data){   
	            	if(data!=null){
						var obj = JSON.stringify(data);
						
						//console.log(JSON.stringify(data));
						if(data==1)
						{
							$("#crear").show();
							$(".msj").text("Cliente no Existe.. Desea Crear Un Cliente.");							
							$("#nombre").val("");
							$("#direccion").val("");
							$("#telefono").val("");
							$("#email").val("");
							$("#id_cliente").val("");
							$("#actualizar").hide();

							
						}	
						else
						{
							console.log(data[0].nombre_completo);
							$("#nombre").val(data[0].nombre_completo);
							$("#direccion").val(data[0].direccion);
							$("#telefono").val(data[0].telefono);
							$("#email").val(data[0].email);
							$("#id_cliente").val(data[0].id_cliente);
							$("#actualizar").show();
							$("#crear").hide();
							$(".msj").text("Encontrado Con Exito.");	
						}            		
	            	}
	            	  $("#loading").hide();
	              //$(".pages").load("../sucursales/Cindex/formulario/"+id_sucursal);      
	            },
	            error:function(){
	                //alert("Error.. No se subio la imagen");
	            }
	        });  

    	});

    	$("#crear").click(function(){
    		$("#loading").show();

    		var dui = $("#dui").val();
			var nombre = $("#nombre").val();
			var direccion = $("#direccion").val();
			var telefono = $("#telefono").val();
			var email = $("#email").val();
							
			if((dui !="") &&(nombre !="") && (direccion !="") && (telefono!="") && (email=!"") ){
				$.ajax({
		            url: "../../../backend/sucursales/Cindex/crearCliente",
		            type:"post",
		            data:$('#cliente').serialize(),
		            success: function(){     
		                    $("#loading").hide();
		                   $(".msj").text("Cliente Creado Con Exito :)");
		            },
		            error:function(){
		                //alert("Error.. No se subio la imagen");
		            }
		        }); 
			}
			else
			{
				$("#loading").hide();
				$(".msj").text("Campos Vacios :)");
			}
    		
    	});

    	$("#actualizar").click(function(){
    		$("#loading").show();
    		$(".msj").empty();
    		$.ajax({
	            url: "../../../backend/sucursales/Cindex/actualizarCliente",
	            type:"post",
	            data:$('#cliente').serialize(),
	            success: function(){     
	                   $("#loading").hide();
	                   $(".msj").text("Cliente Actualizo Correctamente.");	                   
	                   
	            },
	            error:function(){
	                //alert("Error.. No se subio la imagen");
	            }
	        }); 
    	});

    	$("#nombre, #direccion ,#telefono, #email").keyup(function(){
			$(".msj").text("Debe Guardar Los Cambios.");
    	});

	});
</script>
<style>
a.sucursal:hover{
	background: #88B32F;
	color: black;
}
.centro{
	text-align: center;
}
#clientes{
	text-align: center;

}
.datos{
	margin: 0 auto;
   	width: 500px;
}
.msj{
	padding: 10px;
}

</style>



</head>
<body>
<form id="cliente">
<div class="content">
	<div class="row">
			<div class="tab-content">
			<div class="row centro">       
		        <div class="col-md-12">
					<div class="list-group">
						<a href="#" class="list-group-item active">
							<img src="../../../../img/top_logo.png">
							
						</a>
						<div class="datos">
						<table width="100%" border="0" id="clientes">	
						<tr>
							
							
							<td><i class='fa fa-user-plus'></i>DUI :</td>
							<td>
								<input type="text" id="dui" name="dui">
								
								
							</td>
							<td>
								<a href="#" id="buscar" class="btn btn-default">Buscar</a>	
								<input type="hidden" id="id_cliente" name="id_cliente" value="">
							</td>
					
						</tr>
						<tr>
						
							<td><i class='fa fa-user-plus'></i>Nombre Completo :</td>
							<td><input type="text" id="nombre" name="nombre"></input></td>
							<td></td>
						</tr>	
						<tr>
						
							<td><i class='fa fa-user-plus'></i>Dirección :</td>
							<td><input type="text" id="direccion" name="direccion"></input></td>
							<td></td>
						</tr>
						<tr>
						
							<td><i class='fa fa-user-plus'></i>Telefono :</td>
							<td><input type="text" id="telefono" name="telefono"></input></td>
							<td></td>
						</tr>
						<tr>
				
							<td><i class='fa fa-user-plus'></i>Email :</td>
							<td><input type="text" id="email" name="email"></input></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td>
								<a href="#" id="crear" class="btn btn-primary">Crear Cliente</a>
								<a href="#" id="actualizar" class="btn btn-primary">Actualizar Cliente</a>
							</td>	
							<td></td>
									
						</tr>
						<tr>
							<td colspan="3">
								<a id="">
									<span id="loading">
										<img src="../../../../img/loadding.gif" width="50px">
									</span>
									<p class="msj alert alert-info">Formulario - Busqueda Cliente</p>
								</a>	
							</td>
						</tr>					
						</table>		
						</div>				
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>