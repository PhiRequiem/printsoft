<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?php echo $title; ?> - PrintSolutions AdminPanel</title>
	<link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url();?>img/favicon.ico">
	<?php echo link_tag('css/bootstrap.min.css');?>
	<?php echo link_tag('css/bootstrap-responsive.min.css');?>
	<?php echo link_tag('css/sexy.css');?>
	<script type="text/javascript" src="<?php echo base_url();?>js/jquery.min.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>js/bootstrap.min.js"></script>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container">
      <a class="btn btn-navbar " data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
     <a class="brand" href="/">PrintSolutions</a>
      <div class="nav-collapse collapse navbar-responsive-collapse">
		<ul class="nav">
			<li class="active"><a href="/"><i class="icon-home icon-white"></i></a></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Opciones <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<!-- <li><a href="#">Action</a></li>
					<li><a href="#">Another action</a></li>
					<li><a href="#">Something else here</a></li> -->
					<li><a href="#"><i class="icon-barcode"></i> Pedidos</a></li>
					<li class="divider"></li>
					<li><a href="#"><i class="icon-tag"></i> Productos</a></li>
					<li><a href="#"><i class="icon-user"></i> Personal</a></li>
				</ul>
			</li>
		</ul>
		<ul class="nav pull-right">
			<li><a href="<?php echo base_url();?>index.php/users_sessions/kill_session">Cerrar sesión</a></li>
		</ul>
		<form class="navbar-search pull-right">
          <input type="text" class="search-query span3" placeholder="Buscar pedido...">
        </form>
      </div>
    </div>
  </div>
</div>