<?php require './header.php'; ?>
<?php require './nav.php'; ?>

<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fas fa-tachometer-alt"></i> Administración</h1>

        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a href="index.php" class="text-danger">Inicio</a></li>
        </ul>
    </div>
    <div class="row">

        <div class="col-md-6 col-lg-3">
            <div class="widget-small danger coloured-icon"><i class="icon fa fas fa-user fa-3x"></i>
                <div class="info">
                  <a href="#" class="text-black"><h4 >Mi Perfil</h4></a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="widget-small info coloured-icon"><i class="icon fas fa-address-book fa-3x"></i>
                <div class="info">
                   <a href="#" class="text-black"> <h4>Lista de Estudiante</h4></a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="widget-small primary coloured-icon"><i class="icon fas fa-building fa-3x"></i>
                <div class="info">
                      <a href="#" class="text-black"><h4>Lista de empresa</h4></a>
                    <p><b>Cantidad</b></p>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="widget-small warning coloured-icon"><i class="icon fas fa-briefcase fa-3x"></i>
                <div class="info">
                      <a href="#" class="text-black"><h4>Ofertas Registradas</h4></a>
                    <p><b>500</b></p>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-lg-3">
            <div class="widget-small info coloured-icon"><i class="icon fas fa-address-card fa-3x"></i>
                <div class="info">
                      <a href="#" class="text-black"><h4>Lista de Postulaciones realizadas</h4></a>
                </div>
            </div>
        </div>
        


        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">Create a beautiful dashboard</div>
            </div>
        </div>

    </div>

</main>
<?php require './footer.php';?>