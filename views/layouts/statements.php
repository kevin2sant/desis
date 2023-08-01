<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
    <link rel="manifest" href="<?= constant('URL') ?>/manifest.json">
    <script>
        if ("serviceWorker" in navigator){
            navigator.serviceWorker.register("<?= constant('URL') ?>sw.js")
        }
    </script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        DESIS - TEST
    </title>
    <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!-- favicon -->
    <link rel="shortcut icon" href="<?= constant('PUBLIC_URL') ?>images/logo.png"/>
    <link href="<?= constant('PUBLIC_URL') ?>css/bootstrap/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link href="<?= constant('PUBLIC_URL') ?>css/estilos.css" rel="stylesheet">
    <link href="<?= constant('PUBLIC_URL') ?>css/select2.min.css" rel="stylesheet" />

    <?php if (!empty($this->data['css'])) : ?>
        <?php foreach ($this->data['css'] as $key) : ?>
          <link rel="stylesheet" href="<?= constant('PUBLIC_URL') ?>css<?= $key.'?id='.rand(0,1000) ?>">
        <?php endforeach ?>
    <?php endif ?>

    <?php if (!empty($this->data['jsUp'])) : ?>
        <?php foreach ($this->data['jsUp'] as $key) : ?>
          <script src='<?= constant('PUBLIC_URL') ?>js<?= $key.'?id='.rand(0,1000) ?>'></script>
        <?php endforeach ?>
    <?php endif ?>
</head>

<body>
    <div class="wrapper">

        <!-- Content -->
        <div class="content">
            
            <!-- open sidebar menu -->

            <?php require_once './views/' . $name . '.php'; ?>
        </div>
    </div>
</body>


<script src="<?= constant('PUBLIC_URL') ?>js/jquery.3.6.min.js"></script>

<script src="<?= constant('PUBLIC_URL') ?>js/bootstrap/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="<?= constant('PUBLIC_URL') ?>js/select2.min.js"></script>


<!-- Latest compiled and minified Locales -->
<?php if (!empty($this->data['js'])) : ?>
    <?php foreach ($this->data['js'] as $key) : ?>
      <script src='<?= constant('PUBLIC_URL') ?>js<?= $key.'?id='.rand(0,1000) ?>'></script>
    <?php endforeach ?>
<?php endif ?>
</html>