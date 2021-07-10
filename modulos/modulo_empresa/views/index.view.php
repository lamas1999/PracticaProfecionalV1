<?php require './header.php'; ?>
<?php require './nav.php'; ?>

<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fas fa-tachometer-alt"></i> Inicio</h1>
            <p>Realize nuevas ofertas labores o pasantias</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a href="index.php" class="text-danger">Inicio</a></li>
        </ul>
    </div>
    <div class="row">

        <div class="col-md-6 col-lg-3">
            <div class="widget-small primary coloured-icon"><i class="icon fas fa-user-tie fa-3x"></i>
                <div class="info">
                     <a href="#" class="text-black"><h4>Mi Perfil</h4></a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="widget-small info coloured-icon"><i class="icon fa far fa-folder-open"></i>
                <div class="info">
                    <a href="#" class="text-Primary"> <h4>CV</h4></a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="widget-small warning coloured-icon"><i class="icon fas fa-plus-square"></i>
                <div class="info">
                    <a href="#" class="text-black"> <h4>Nueva Oferta</h4></a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="widget-small danger coloured-icon"><i class="icon fas fa-list-alt"></i>
                <div class="info">
                   <a href=""><h4>Lista de oferta Realizadas</h4></a> 
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