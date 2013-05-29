
<div class="container">
	<?php //echo $title; ?>
	<h1 class="">Cotizar pedido</h1>
<div class="row-fluid">
	<div class="span5"><button id="add_product_1" class="btn btn-large btn-block" type="button">Agregar vinil</button></div>
	<div class="span5"><button id="add_product_2" class="btn btn-large btn-block" type="button">Agregar papelería</button></div>
	<div class="span2">
		<div class="btn-group pull-right">
			<button class="btn btn-large dropdown-toggle" data-toggle="dropdown">Otros <span class="caret"></span></button>
			<ul class="dropdown-menu">
			 	<li><a id="add_product_3" href="#">CTP</a></li>
				<li><a id="add_product_4" href="#">Maquila</a></li>
				<li><a id="add_product_5" href="#">Diseño</a></li>
				<li><a id="add_product_6" href="#">Guillotina</a></li>
				<li><a id="add_product_6" href="#">Otro</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="space-1"></div>
<?php echo form_open('orders'); ?>
<div id="order"></div>
<div class="row-fluid">
	<div class="span12">
		<button class="btn btn-large btn-block btn-primary" type="submit">Cotizar pedido</button>
	</div>
</div>
<script>
var p1 = 0; var p2 = 0; var p3 = 0; var p4 = 0; var p5 = 0; var p6 = 0;
$("#add_product_1").click(function(event) {
	$("#order").append('<div class="product product-1"><button type="button" class="close" data-dismiss="alert">&times;</button><h4>Vinil!</h4><?php echo $prod_1 ?></div>');
	p1++;
});
$("#add_product_2").click(function(event) {
	$("#order").append('<div class="product product-2"><button type="button" class="close" data-dismiss="alert">&times;</button><h4>Papelería!</h4><?php echo $prod_2; ?></div>');
	p2++;
});
$("#add_product_3").click(function(event) {
	$("#order").append('<div class="product product-3"><button type="button" class="close" data-dismiss="alert">&times;</button><h4>CTP!</h4><?php echo $prod_3; ?></div>');
	p3++;
});
$("#add_product_4").click(function(event) {
	$("#order").append('<div class="product product-4"><button type="button" class="close" data-dismiss="alert">&times;</button><h4>Maquila!</h4><?php echo $prod_4; ?></div>');
	p4++;
});
$("#add_product_5").click(function(event) {
	$("#order").append('<div class="product product-5"><button type="button" class="close" data-dismiss="alert">&times;</button><h4>Diseño!</h4><?php echo $prod_5; ?></div>');
	p5++;
});
$("#add_product_6").click(function(event) {
	$("#order").append('<div class="product product-6"><button type="button" class="close" data-dismiss="alert">&times;</button><h4>Guillotina!</h4><?php echo $prod_6; ?></div>');
	p6++;
});
</script>
<?php echo form_close(); ?>