<?php

if(!isset($_SESSION['idUser']))
{
  header('Location: '.'login.php');
}
if(!isset($_SESSION['usuario'])){
  session_destroy();
}

?>

<script>

</script>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="admin-themes-lab">
    <meta name="author" content="themes-lab">
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/png">
    <title>Backend</title>
    <script src="../../../assets/plugins/jquery/jquery-1.11.1.min.js"></script>
    <?php
      foreach ($lib_login as $value) {
      ?>
      <script src="../../../<?php echo $value->url_libreria; ?>"></script>      
      <?php
    }
    ?>
    <link href="../../../assets/css/style.css" rel="stylesheet">
    <link href="../../../assets/css/theme.css" rel="stylesheet">
    <link href="../../../assets/css/ui.css" rel="stylesheet">
    <!-- BEGIN PAGE STYLE -->
    <link href="../../../assets/plugins/metrojs/metrojs.min.css" rel="stylesheet">
    <link href="../../../assets/plugins/maps-amcharts/ammap/ammap.min.css" rel="stylesheet">
    <!-- END PAGE STYLE -->
    <script src="../../../assets/plugins/modernizr/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
    <style>
          .nav-sidebar, .sidebar-inner{
            font-family: Arial;
          }
          /*
 *  Usage:
 *
      <div class="sk-three-bounce">
        <div class="sk-child sk-bounce1"></div>
        <div class="sk-child sk-bounce2"></div>
        <div class="sk-child sk-bounce3"></div>
      </div>
 *
 */
.sk-three-bounce {
    
    left: 0;
    margin-bottom: 5px;
    margin-left: auto;
    margin-right: auto;
    right: 0;
    text-align: center;
    top: 0px;
    display: none;  
    z-index: 1000;
    position: absolute;
    float: right;
   }

  .sk-three-bounce .sk-child {
    width: 20px;
    height: 20px;
    background-color: #9AC835;
    border-radius: 100%;
    border:1px solid black;
    display: inline-block;
    -webkit-animation: sk-three-bounce 1.4s ease-in-out 0s infinite both;
            animation: sk-three-bounce 1.4s ease-in-out 0s infinite both; }
  .sk-three-bounce .sk-bounce1 {
    -webkit-animation-delay: -0.32s;
            animation-delay: -0.32s; }
  .sk-three-bounce .sk-bounce2 {
    -webkit-animation-delay: -0.16s;
            animation-delay: -0.16s; }

@-webkit-keyframes sk-three-bounce {
  0%, 80%, 100% {
    -webkit-transform: scale(0);
            transform: scale(0); }
  40% {
    -webkit-transform: scale(1);
            transform: scale(1); } }

@keyframes sk-three-bounce {
  0%, 80%, 100% {
    -webkit-transform: scale(0);
            transform: scale(0); }
  40% {
    -webkit-transform: scale(1);
            transform: scale(1); } }
          
          
    </style>

  </head>

  <body class="fixed-topbar fixed-sidebar theme-sdtl color-default">

    <!--[if lt IE 7]>
    <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <section>
      <!-- BEGIN SIDEBAR -->
      <div class="sidebar">
        <div class="logopanel">
          <h3 style="float: rigth; text-align:center; margin-top:5px;">
            <a href="autenticacion">BIENVENIDO</a>
          </h3>
        </div>
        <div class="sidebar-inner">
          <div class="sidebar-top">
            <div class="userlogged clearfix">
              <i class="icon demo">
                <img id="img_center" src="../../../assets/images/avatars/top_logo.png" width="80%">
              </i>
              <!-- <i class="icon icons-faces-users-01"></i>-->
            </div>
          </div>
          <div class="menu-title">
            Configurar Menu
            <div class="pull-right menu-settings">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" data-delay="300"> 
              <i class="icon-settings"></i>
              </a>
              <ul class="dropdown-menu">
                <li><a href="#" id="reorder-menu" class="reorder-menu">Reorder menu</a></li>
                <li><a href="#" id="remove-menu" class="remove-menu">Remove elements</a></li>
                <li><a href="#" id="hide-top-sidebar" class="hide-top-sidebar">Hide user &amp; search</a></li>
              </ul>
            </div>
          </div>
          <ul class="nav nav-sidebar">
            <?php
            foreach ($menu as $value) {
              ?>
              <li class="nav-parent <?php echo $value->class_menu ?>">
                <a href="#"><i class="<?php echo $value->icon_menu ?>"></i>
                  <span data-translate="builder"><?php echo $value->nombre_menu ?></span>
                  <span class="fa arrow"></span>
                </a>
                <ul class="children collapse"> 
                <?php

                    

                    foreach($submenu as $sub_menu)
                    {
                      if($value->id_menu==$sub_menu->id_menu){
                        ?>
                          <li>
                            <a id="submenu" href="#<?php echo $sub_menu->url_submenu; ?>"><?php echo $sub_menu->nombre_submenu; ?>
                              <input type='hidden' id="titulo_sub" value="<?php echo 1 ?>">
                            </a>
                          </li>
                        <?php
                      }                    
                    }
                  ?> 
                  </ul>               
                </li>
              <?php
            }

            ?>
          </ul>
          <!-- SIDEBAR WIDGET FOLDERS -->
          <div class="sidebar-widgets">
           

          </div>
          <div class="sidebar-footer clearfix">
            <a class="pull-left footer-settings" href="#" data-rel="tooltip" data-placement="top" data-original-title="Settings">
            <i class="icon-settings"></i></a>
            <a class="pull-left toggle_fullscreen" href="#" data-rel="tooltip" data-placement="top" data-original-title="Fullscreen">
            <i class="icon-size-fullscreen"></i></a>
            <a class="pull-left" href="user-lockscreen.php" data-rel="tooltip" data-placement="top" data-original-title="Lockscreen">
            <i class="icon-lock"></i></a>
            <a class="pull-left btn-effect" href="logaut.php" data-modal="modal-1" data-rel="tooltip" data-placement="top" data-original-title="Logout1">
            <i class="icon-power"></i></a>
          </div>
        </div>
      </div>
      <!-- END SIDEBAR -->
      <div class="main-content">
        <!-- BEGIN TOPBAR -->
        <div class="topbar">
          <div class="header-left">
            <div class="topnav">
              <a class="menutoggle" href="#" data-toggle="sidebar-collapsed"><span class="menu__handle"><span>Menu</span></span></a>
              <ul class="nav nav-icons">
              <h3>
                <?php
                foreach ($empresa as $value) {
                  echo $value->nombre_empresa.' '.$value->departamento;
                }
                
                ?>
              </h3>
              </ul>
            </div>
          </div>
          <div class="header-right">
            <ul class="header-menu nav navbar-nav">
              
              <!-- BEGIN NOTIFICATION DROPDOWN -->           
              <!-- END NOTIFICATION DROPDOWN -->

              <!-- BEGIN MESSAGES DROPDOWN -->
              <!-- END MESSAGES DROPDOWN -->

              <!-- BEGIN USER DROPDOWN -->
              <li class="dropdown" id="user-header">
                <a href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                
                 
                <img class="ava" src="../../../assets/images/avatars/<?php echo $usuario[0]->avatar ?>" alt="user image">
                 
                
                <span class="username"><?php echo $usuario[0]->nickname; ?></span>
                </a>
                <ul class="dropdown-menu">               
                  <li>
                    <a href="salir"><i class="icon-logout"></i><span>SALIR</span></a>
                  </li>
                </ul>
              </li>
              <!-- END USER DROPDOWN -->
              <!-- CHAT BAR ICON -->
              
            </ul>
          </div>
          <!-- header-right -->         
          </div>

          <div class="page-content">
            <div class="row">
            <div class="col-lg-12 ">
                <div class="panel">
                  <div class="panel-header">
                    <h3><i class="icon-list"></i><span class="titulo_submenu"></span></h3>
                  </div>
                  <div class="panel-content">
                    <div class="row">
                      <div class="col-md-12">
                      <div class="sk-three-bounce">
                        <div class="sk-child sk-bounce1"></div>
                        <div class="sk-child sk-bounce2"></div>
                        <div class="sk-child sk-bounce3"></div>
                      </div>
                      <div class="pages">
                        BIENVENIDOS
                      </div>                       
                      </div>
                      
                    </div>
                  </div>
                </div>
              </div>

            </div>
          </div>
              


  
        <!-- END TOPBAR -->

      
      </div>
      <!-- END MAIN CONTENT -->

      <!-- BEGIN BUILDER layout option-->

      <!-- END BUILDER -->
    </section>
    <!-- BEGIN QUICKVIEW SIDEBAR chat -->


    <!-- BEGIN PRELOADER -->
    <div class="loader-overlay">
      <div class="spinner">
        <div class="bounce1"></div>
        <div class="bounce2"></div>
        <div class="bounce3"></div>
      </div>
    </div>
    <!-- END PRELOADER -->
    <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a> 
    
    <!--
    <script src="../../../assets/plugins/jquery/jquery-migrate-1.2.1.min.js"></script>
    <script src="../../../assets/plugins/gsap/main-gsap.min.js"></script>
    -->
    <script src="../../../assets/plugins/jquery-ui/jquery-ui-1.11.2.min.js"></script>
    
    <script src="../../../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../../../assets/plugins/jquery-cookies/jquery.cookies.min.js"></script> <!-- Jquery Cookies, for theme -->
    <script src="../../../assets/plugins/jquery-block-ui/jquery.blockUI.min.js"></script> <!-- simulate synchronous behavior when using AJAX -->
    <script src="../../../assets/plugins/translate/jqueryTranslator.min.js"></script> <!-- Translate Plugin with JSON data -->
    <script src="../../../assets/plugins/bootbox/bootbox.min.js"></script> <!-- Modal with Validation -->
    <script src="../../../assets/plugins/mcustom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script> <!-- Custom Scrollbar sidebar -->
    <script src="../../../assets/plugins/bootstrap-dropdown/bootstrap-hover-dropdown.min.js"></script> <!-- Show Dropdown on Mouseover -->
    <script src="../../../assets/plugins/charts-sparkline/sparkline.min.js"></script> <!-- Charts Sparkline -->
    <script src="../../../assets/plugins/backstretch/backstretch.min.js"></script> <!-- Background Image -->
    <script src="../../../assets/plugins/bootstrap-progressbar/bootstrap-progressbar.min.js"></script> <!-- Animated Progress Bar -->
    <script src="../../../assets/js/builder.js"></script> <!-- Theme Builder -->
    <script src="../../../assets/js/sidebar_hover.js"></script> <!-- Sidebar on Hover -->
    <script src="../../../assets/js/application.js"></script> <!-- Main Application Script -->
    <script src="../../../assets/js/plugins.js"></script> <!-- Main Plugin Initialization Script -->


  </body>
</html>

