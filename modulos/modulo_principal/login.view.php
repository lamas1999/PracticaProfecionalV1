<?php require_once 'header.php'; ?>

<main id="main">
   <section class="material-half-bg"></section> 
    
    <section class="login-content">
        <div class="login-box">

        
            <form class="login-form" action="#">
                <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>Iniciar Sección</h3>
                <div class="form-group">
                    <label class="control-label">USUARIO</label>
                    <input class="form-control" type="text" placeholder="Email" autofocus>
                </div>
                <div class="form-group">
                    <label class="control-label">PASSWORD</label>
                    <input class="form-control" type="password" placeholder="Password" id="show">
                </div>
                <div class="form-group">
                    <div class="utility">
                        <div class="animated-checkbox">
                            <label>
                                <input type="checkbox"><span class="label-text"> Mantener la sesión iniciada </span>
                            </label>
                        </div>
                        
                    </div>
                </div>
                <div class="form-group btn-container">
                    <button class="btn1 btn-primary1 btn-block1"><i class="fas fa-sign-in-alt"></i> ACCEDER</button>
                </div>
            </form>

        </div>
    </section>
</main>
    <?php require 'footer.php';?>