<?php require './header.php'; ?>
<?php require './nav.php'; ?>

<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fas fa-tachometer-alt"></i> Lista de Empleos Disponibles</h1>
            <p>Vea todos los empleos disponibles</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a href="index.php" class="text-danger">Lista de empleos</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body"> A quiva el filtrado</div>
            </div>
        </div>
        <section id="team">
            <!--Post  -->
            <div class="col-md-12 mb-4">
                <div class="post d-flex align-items-center justify-content-center" data-aos="zoom-in"
                    data-aos-delay="100">
                    <div class="pic col-md-2"><img src="<?php echo RUTA;?>/imagenes/logos/team/team-1.jpg"
                            class="img-fluid" alt=""></div>&nbsp;&nbsp;&nbsp;&nbsp;

                    <div class="member-info">
                        <h4><a href="#" class="text-danger">Analista de Desarrollo de Sistemas - Plazo Fijo</a></h4>
                        <span>Sociedad Anonima</span>
                        <h6> <i class="far fa-calendar-alt"></i> fecha</h6>
                        <h6> <i class="fas fa-map-marker-alt"></i> Ciudad,pais</h6>
                        <p class="line-head"> Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                            Culpa, numquam! Accusamus magni nostrum asperiores? Natus voluptas
                            corrupti optio totam, distinctio facilis! Temporibus amet eos incidunt optio.
                            Amet facere architecto consequatur Lorem ipsum, dolor sit amet consectetur
                            adipisicing elit. Reprehenderit soluta obcaecati sapiente culpa dolorum possimus
                            non alias. Voluptatum in velit at esse laboriosam adipisci voluptatibus dolore. Dolores
                            molestiae dolorum placeat.</p></br>
                        <p><a class="btn btn-danger icon-btn" href="">Ver Empleo <i
                                    class="fas fa-share"></i></a></p>
                    </div>
                </div>
            </div>
            <!-- END POST -->
            <?php require_once 'paginacion.php';?>
        </section>
    </div>

</main>
<?php require './footer.php';?>