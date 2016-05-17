<?php 
	$tittle = "Statistics";
	$incHead = '<link rel="stylesheet" href="js/morris.css">
				<script type="text/javascript" src="js/raphael.js"></script>
				<script type="text/javascript" src="js/morris.js"></script>';
?>
<?php include '_header.php'; ?>
<?php include '_stats.php'; ?>

<div class="card">
	<h3>Total Packs Generated</h3>
		<h1 class="center"><?php echo $total; ?></h1>
</div>

<div class="card">
	<h3>Top 5 Muted Sounds</h3>
	<div id="g1" style="height: 300px;"></div>
	<a id="showAll" class="right clearfix" onclick="$('#allList').slideToggle();">Show All..</a>
	<ol id="allList" class="hidden">
		<?php echo $g2; ?>
	</ol>
</div>

<div class="card">
	<h3>Top 5 Muted Things (by average)</h3>
	<div id="g3" style="height: 300px;"></div>
	<a id="showAll" class="right clearfix" onclick="$('#allGroupedList').slideToggle();">Show All..</a>
	<ol id="allGroupedList" class="hidden">
		<?php echo $g4; ?>
	</ol>
</div>


<script type="text/javascript">
	new Morris.Donut({
		  element: 'g1',
		  data: [
			  <?php echo $g1;?>
		  ],
		  xkey: 'label',
		  ykeys: ['value'],
		  labels: ['count']
	});

	new Morris.Donut({
		  element: 'g3',
		  data: [
			  <?php echo $g3;?>
		  ],
		  xkey: 'label',
		  ykeys: ['value'],
		  labels: ['count']
	});
</script>

<?php include '_footer.php'; ?>
