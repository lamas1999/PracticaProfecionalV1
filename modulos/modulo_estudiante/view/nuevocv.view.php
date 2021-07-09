<?php require './header.php'; ?>
<?php require './nav.php'; ?>

<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="far fa-file-alt"></i> Nuevo Currículum Vitae</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item">CV</li>
            <li class="breadcrumb-item"><a href="cv.php" class="text-danger">Mis CV.</a></li>
            <li class="breadcrumb-item active"><a href="nuevocv.php" class="text-danger">Nuevo CV.</a></li>
        </ul>
    </div>
    <div class="row align-items-center justify-content-center">
        <div class="col-md-8">
            <div class="tile">
                <h3 class="tile-title line-head text-center">Crear Nuevo CV.</h3>
                <p>Los campos marcado con asterisco (<span class="text-danger">*</span>) son obligatorios</p> 
                <div class="tile-body">
                <!-- Inicio del Formulario -->
                    <form class="form-horizontal">
                        <div class="form-group row">
                            <label class="control-label col-md-3">Name</label>
                            <div class="col-md-8">
                                <input class="form-control" type="text" >
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-md-3">Email</label>
                            <div class="col-md-8">
                                <input class="form-control col-md-8" type="email">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-md-3">Address</label>
                            <div class="col-md-8">
                                <textarea class="form-control" rows="4"></textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-md-3">Gender</label>
                            <div class="col-md-9">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="gender">Male
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="gender">Female
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-md-3">Identity Proof</label>
                            <div class="col-md-8">
                                <input class="form-control" type="file">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-8 col-md-offset-3">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox">I accept the terms and
                                        conditions
                                    </label>
                                </div>
                            </div>
                        </div>
                    </form>
                    <!-- Fin del formulario -->
                </div>
                <div class="tile-footer">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-3">
                            <button class="btn btn-danger" type="button"><i
                                    class="fa fa-fw fa-lg fa-check-circle"></i>Register</button>&nbsp;&nbsp;&nbsp;<a
                                class="btn btn-secondary" href="cv.php"><i
                                    class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>





    </div>
</main>

<?php require './footer.php';?>