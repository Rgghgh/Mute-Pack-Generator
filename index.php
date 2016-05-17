<?php $tittle = "App" ?>
<?php include '_header.php'; ?>

<?php 
	#if(isset($_GET['import']))
	#	include '_import.php';
?>

<?php if (! isset ( $_COOKIE ['first'] ) || isset($_GET['t']) ) : include '_tutorial.php'; endif; ?>

<form method="post" onsubmit="return valGen();" action="_generator.php">
	
	<?php 
		$token = md5(uniqid(mt_rand(),true));	
		$_SESSION['token'] = $token;
	?>
	<input type="hidden" name="token" value="<?php echo $token; ?>" />	
	<div class="err"></div>
	<?php include '_options.php'; ?>
	<input type="submit" value=" " />
	
</form>
	
<?php include '_footer.php'; ?>