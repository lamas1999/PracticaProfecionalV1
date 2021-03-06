<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Utepsa - Bolsa de Trabajo</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<?php echo RUTA;?>/assets/principal/img/favicon.png" rel="icon">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!--  -->
  <!-- <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<?php echo RUTA;?>/assets/principal/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
  <link href="<?php echo RUTA;?>/assets/principal/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="<?php echo RUTA;?>/assets/principal/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<?php echo RUTA;?>/assets/principal/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="<?php echo RUTA;?>/assets/principal/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="<?php echo RUTA;?>/assets/principal/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="<?php echo RUTA;?>/assets/principal/vendor/aos/aos.css" rel="stylesheet">
  <!-- Glider.js -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.1/normalize.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.min.css">
  <!--  -->

  <!-- Template Main CSS File -->
  <link href="<?php echo RUTA;?>/assets/principal/css/style.css" rel="stylesheet">

  <body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

     <a href="#" class="logo"><img src="<?php echo RUTA;?>/assets/principal/img/logo.png" alt="" class="img-fluid"> </a>
      <h1 class="logo mr-auto"><a href="index.php"> UTEPSA</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      

      <nav class="nav-menu d-none d-lg-block">
        <ul>
         
        
      
          <li class="drop-down"><a href="">Drop Down</a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="drop-down"><a href="#">Deep Drop Down</a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 2</a></li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
            </ul>
          </li>
          <li><a href="#" data-toggle="modal" data-target="#exampleModal">Registrate</a></li>

        </ul>
      </nav><!-- .nav-menu -->

      <a href="login.php" class="get-started-btn scrollto">Iniciar secci??n</a>

    </div>
  </header><!-- End Header -->


  <!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch demo modal
</button>
 -->
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
    <!--   <h4 class="modal-title" id="exampleModalLabel">Registro</h4> -->
       <h4>Registro</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Si usted est?? en busca de empleo o desea publicar 
        su curr??culo, por favor seleccione "Candidatos". 
        Si usted busca contratar personal para su empresa o 
        negocio, por favor seleccione "Empresas".</p>
      </div>
      <div class="modal-footer">
        <a href="<?php echo RUTA;?>/modulos/modulo_estudiante/index.php" type="button" class="btn btn-danger">Candidatos</a>
        <a href="registro.empresa.php" type="button" class="btn btn-danger">Empresa</a>
      </div>
    </div>
  </div>
</div>

<!-- ======= Cta Section ======= -->
<section id="cta" class="cta">
    <div class="container" data-aos="zoom-in">

        <div class="row">
            <div class="col-lg-9 text-center text-lg-left">
                <h3>Universidad Tecnol??gica Privada de Santa Cruz de la Sierra</h3>
                <p> Registrate e ingresa para ver las ofertas laborales.</p>
            </div>

        </div>

    </div>
</section><!-- End Cta Section -->