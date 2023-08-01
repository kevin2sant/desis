<!-- Sidebar -->
<nav class="sidebar light">
    
    <!-- close sidebar menu -->
    <div class="dismiss">
        <i class="fas fa-arrow-left"></i>
    </div>
    
    <div class="logo">
        <img style="width: 70px;height: 70px;" src="<?= constant('PUBLIC_URL') ?>images/lidiawarewhite.png"/>
    </div>
    
    <ul class="list-unstyled menu-elements">
        <?php $i = 0; ?>
        <?php if(!empty($_SESSION['user']['modules'])): ?>
            <?php foreach ($_SESSION['user']['modules'] as $key): ?>
                <?php $i++ ?>
                <?php if (empty($key['v_controller'])): ?>
                    <li>
                        <a href="#otherSections<?=$i?>" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" role="button" aria-controls="otherSections<?=$i?>">
                            <i class="<?=$key['v_icon']?>"></i><?= $key['v_name']?>
                        </a>
                        <ul class="collapse list-unstyled submenu" id="otherSections<?=$i?>">
                            <?php foreach ($_SESSION['user']['modules'] as $sub): ?>
                                <?php if ($sub['i_parent'] == $key['i_idmodules']): ?>
                                <li>
                                    <a class="scroll-link" href="<?= constant('URL').$sub['v_controller']?>"><?= $sub['v_sub_name']?></a>
                                </li>
                                <?php endif ?>
                            <?php endforeach ?>
                        </ul>
                    </li>
                <?php else: ?>
                    <?php if (!empty($key['v_name'])): ?>
                        <li class="">
                            <a class="scroll-link" href="<?= constant('URL').$key['v_controller']?>"><i class="<?=$key['v_icon']?>"></i><?= $key['v_name']?></a>
                        </li>
                    <?php endif ?>
                <?php endif ?>
            <?php endforeach ?>
            <li class="">
                <a class="scroll-link" href="<?= constant('URL').'session/logout'?>"><i class="bx bx-log-out nav_icon"></i>Cerrar sesión</a>
            </li>
        <?php endif ?> 
    </ul>
    
    
    <div class="dark-light-buttons">
        <a class="btn btn-primary btn-customized-4 btn-customized-dark" href="#" role="button">Dark</a>
        <a class="btn btn-primary btn-customized-4 btn-customized-light" href="#" role="button">Light</a>
    </div>
    
</nav>
