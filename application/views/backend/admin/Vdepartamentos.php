 <!-- END PRELOADER -->
    <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a> 
    
    <script src="../../../assets/js/plugins.js"></script>
    <script src="../../../assets/plugins/datatables/jquery.dataTables.min.js"></script>


<script>
  $(document).ready(function(){
      // CONVERTIR FECHAS A TEXTO
      $("li#menu_li").click(function(){        
        var texto = $(this).text();        
            if(texto=="Buscar")        
            {     
              $(".includ").load("backend/usuarios/Cusuarios/index");             
            }
        });

      $(".femenino").hide();

      $("#genero").change(function (){
        var genero = $("#genero").val();
          if(genero == "F")
          {
            $(".femenino").show();
            $(".masculino").hide();
          }
          else
          {
            $(".femenino").hide();
            $(".masculino").show();
          }
      });

  });

  $("#abc").click(function(){
    saveData1();
  });

  function saveData1()
  {
    
    $.ajax({
        url: "../usuarios/Cusuarios/guardar_usuario",
        type:"post",
        data: $("#usuario").serialize(),
        
        success: function(){
          //alert("Se Guardo Correctamente El usuario");
          $(".A").removeClass("active");
          $(".B").addClass("active");
          $("#tab1_1").removeClass("active");
            
          $("#tab1_2").addClass("active in");
          $("#tab1_2").load("pages/lista_usuarios.php");  
        },
        error:function(){
            alert("failure");
        }
    });
  }

  $("a.eliminar").click(function()
  {
    $(".usuario_eliminar").text($(this).attr("name"));    
    $("#idUsuarioEliminar").val($(this).attr('id'));
  });

   $('#eliminarUsuario').click(function(){
      id = $("#idUsuarioEliminar").val();  
            
      delete_usuario(id);
    });

    function delete_usuario(id)
    {
        
      $.ajax({
            url: "../usuarios/Cusuarios/eliminar_usuario/"+id,
            type:"post",
            success: function(){     
              $(".includ").load("backend/usuarios/Cusuarios/index");      
            },
            error:function(){
                //alert("Error.. No se subio la imagen");
            }
        });   
   }
   $(".detalle_departamento").click(function(){
    $(".sk-three-bounce").show();
    var id_departamento = $(this).attr("id");
        $.ajax({
            url: "../admin/Cdepartamentos/editar",
            type:"post",
            data: $("#usuario").serialize(),
            success: function(){     
              $(".pages").load("../admin/Cdepartamentos/editar/"+id_departamento);   
              setTimeout(function() {
                        $(".sk-three-bounce").css('display','none');
                    }, 1000);   
            },
            error:function(){
                //alert("Error.. No se subio la imagen");
            }
        });  
   });

    $(".btn-crear").click(function()
    {
        $(".sk-three-bounce").show();
        var url = $(this).attr('id');      
        $(".pages").load(url);  
        setTimeout(function() {
                        $(".sk-three-bounce").css('display','none');
                    }, 1000);      
    });
</script>

<style>
  .table-dynamic{width: 100%;}
  .form-inline .form-control {
    width:85%;
    font-weight: 10px;
    padding: 4px;
  }

  .input__label-content{
    margin-top: -20px;
  }
  .line{
    
  }
  #anio{
    width: 100%;
  }
  .avatar{
    padding: 10px;
    display: inline-block;
  }

  .titulos{
    font-size: 12px;
  }
  .btn-crear{
    text-align: right;
    float: right;
    display: inline-block;
    position: relative;
    margin-right: 3%;
  }


</style>

<form action="../usuarios/Cusuarios/guardar_usuario" id="usuario" method="POST">
  <div class="tab-content">
  <a href="#" id="../admin/Cdepartamentos/crear" class="btn btn-danger btn-crear" name="">Nuevo</a><br>
    <div class="tab-pane fade active in" id="tab1_1">
      <table class="table table-hover table-dynamic filter-head">
                    <thead class='titulos'>
                      <tr>
                        <th>Pais</th> 
                        <th>Departamento</th>                    
                        <th>Creado</th>                        
                        <th>Estado</th>   
                        <th>Detalle</th>                        
                      </tr>
                    </thead>
                    <tbody>
                    <?php
                    if($departamentos!="")
                    {
                    foreach ($departamentos as $departamento) {

                            ?>
                             <tr>
                                <td><?php echo $departamento->nombre_pais;  ?></td>
                                <td><?php echo $departamento->nombre_departamento;  ?></td>
                                <td><?php $date = date_create($departamento->fecha_creacion); echo date_format($date,"Y/m/d");  ?></td>
                                
                                <td><?php if($departamento->estado_departamento == 1){ echo "Activo";}else{echo "Inactivo";}  ?></td>
                                <td>
                                    <a class="detalle_departamento" id="<?php echo $departamento->id_departamento; ?>" name='<?php echo $departamento->nombre_departamento; ?>' href="#">
                                    <button type="button" class="btn btn-dark btn-transparent">Detalle</button>
                                     </a>                                     
                                </td>                                 
                             </tr>
                            
                            <?php
                        }
                      }
                    ?>                      
                    </tbody>
    </table>
    </div>

    <div class="tab-pane includ fade" id="tab1_2">
      
    </div>

    <div class="tab-pane fade" id="tab1_3">
      <p></p>
    </div>
  </div>
</form>

  <!-- BEGIN MODALS -->
          <div class="modal fade" id="eliminar-usuario" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header bg-primary">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                  <h4 class="modal-title"><strong>Eliminar</strong> Usuario </h4>
                </div>
                <div class="modal-body">
                <b>Desea Eliminar el Usuario :</b> <span class="usuario_eliminar"></span>
                <input type="hidden" name="idUsuarioEliminar" id="idUsuarioEliminar" value="">
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">Cancelar</button>
                  <button type="button" class="btn btn-primary btn-embossed" id='eliminarUsuario' data-dismiss="modal">Eliminar</button>
                </div>
              </div>
            </div>
          </div>
          <!-- END MODALS -->

