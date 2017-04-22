<script>
  	$(document).ready(function(){
  		//Cargar Sucursal
  		$("#nuevos").click(function(){
    		
	        $.ajax({	            
	            type:"post",
	            success: function(){     
	              $(".reporte").load("../sucursales/Cindex/reporte_nuevos/");      
	            },
	            error:function(){
	                //alert("Error.. No se subio la imagen");
	            }
	        });  
   		});

   		$("#modificados").click(function(){
    		
	        $.ajax({	            
	            type:"post",
	            success: function(){     
	              $(".reporte").load("../sucursales/Cindex/reporte_modificados/");      
	            },
	            error:function(){
	                //alert("Error.. No se subio la imagen");
	            }
	        });  
   		});

   		$("#todos").click(function(){
    		
	        $.ajax({	            
	            type:"post",
	            success: function(){     
	              $(".reporte").load("../sucursales/Cindex/reporte_todos/");      
	            },
	            error:function(){
	                //alert("Error.. No se subio la imagen");
	            }
	        });  
   		});
   		//End

   		$("#btnExport").click(function (e) {
            window.open('data:application/vnd.ms-excel,' + $('.reporte').html());
            e.preventDefault();
        });
	});
</script>
<style>
a.sucursal:hover{
	background: #88B32F;
	color: white;
}

.load_ordenes{
        background: none;
        padding: 5px;
        color:black;
    }
    #btnExport{
        float: right;
    }
    table {
        width: 100%;
    border: 1px solid black;
    }
    th {
        border: 1px solid black;
        padding: 5px;
        background-color:grey;
        color: white;
    }
    td {
        border: 1px solid black;
        padding: 5px;
    }
</style>
<div class="tab-content">
	<div class="row" id="data">       
		<a href="#" id="nuevos" class="btn btn-primary">Clientes Nuevos</a>
		<a href="#" id="modificados" class="btn btn-primary">Clientes Modificados</a>
		<a href="#" id="todos" class="btn btn-primary">Todos los Clientes</a>
	</div>
	<input type="button" id="btnExport" value=" Exportar Datos " />

	<div class="reporte">
		
	</div>
</div>