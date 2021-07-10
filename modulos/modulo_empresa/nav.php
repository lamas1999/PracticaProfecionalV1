  <!-- Sidebar menu-->
  <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="<?php echo RUTA;?>/imagenes/user/login_default.png" alt="User Image" height="50px" width="50px">
        <div>
          <p class="app-sidebar__user-name">John Doe</p>
          <p class="app-sidebar__user-designation">Empresa</p>
        </div>
      </div>
      <ul class="app-menu">
        <li><a class="app-menu__item active" href="index.php"><i class="app-menu__icon fas fa-tachometer-alt"></i><span class="app-menu__label">Dashboard</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fas fa-briefcase"></i><span class="app-menu__label">Oferta Laborales</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="empresa.php"><i class="icon fas fa-plus-circle"></i>Nueva Oferta</a></li>
            <li><a class="treeview-item" href="estudiante.php"><i class="icon far fa-circle"></i>Lista de oferta</a></li>
          </ul>
        </li>
        <li><a class="app-menu__item " href="docs.html"><i class="app-menu__icon fas fa-clipboard-list"></i><span class="app-menu__label">Lista de CV</span></a></li>
        <li><a class="app-menu__item " href="docs.html"><i class="app-menu__icon fas fa-user-circle"></i><span class="app-menu__label">Mi Perfil</span></a></li>
      </ul>
    </aside>