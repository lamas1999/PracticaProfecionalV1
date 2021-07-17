<?php require_once 'header.php'; ?>
<main id="main">
    <!-- ======= Team Section de empleo ======= -->
    <section id="team" class="team section-bg">
        <div class="container" data-aos="fade-up">
            <div class="section-title">
                <h2>Ofertas de Empleo</h2>
            </div>
            <div class="row">
                <!--SECTION POST  -->
                <div class="col-md-12 mb-4">
                    <div class="member d-flex align-items-start" data-aos="zoom-in" data-aos-delay="100">
                        <!-- <div class="pic"><img src="assets/img/team/team-1.jpg" class="img-fluid" alt=""></div> -->
                        <div class="pic col-md-3"><img src="<?php echo RUTA;?>/imagenes/logos/team/team-1.jpg"
                                class="img-fluid" alt=""></div>
                        <div class="member-info">
                            <h4><a href="#">Titulo</a></h4>
                            <span>Nombre</span>
                            <h6> <i class="far fa-calendar-alt"></i> fecha</h6>
                            <h6> <i class="fas fa-map-marker-alt"></i> ciudad, pais</h6>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                                when an unknown printer took a galley of type and scrambled it to make a type specimen
                                book.
                                It has survived not only five centuries, but also the leap into electronic typesetting,
                                remaining
                                essentially unchanged. It was popularised in the 1960s with the release of Letraset
                                sheets containing
                                Lorem Ipsum passages, and more recently with desktop publishing software like Aldus
                                PageMaker including
                                versions of Lorem Ipsum.</p></br>
                            <div class="col-lg-3 cta-btn-container text-center">
                                <a href="#" class="get-ver-btn scrollto">Ver Empleo</a>
                            </div>
                        </div>
                    </div>
                </div>


                <!--END ECTION POST  -->
            </div>
            <!-- Paginacion -->
            <?php require_once 'paginacion.php'; ?>
             <!-- Crosel -->
      <?php require_once 'carosel.imagenes.php'; ?>
          
        </div>
    </section>
</main>
<?php require 'footer.php';?>