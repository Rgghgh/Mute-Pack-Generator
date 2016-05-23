<?php $tittle = "App" ?>
<?php include '_header.php'; ?>

<?php 
	#if(isset($_GET['import']))
	#	include '_import.php';
?>

<?php if (! isset ( $_COOKIE ['first'] ) || isset($_GET['t']) ) : include '_tutorial.php'; endif; ?>

<div class="notice">
	<b>Broken in Minecraft 1.9:</b><br>
	Resource packs and sounds have changed and the generator was not updated.<br>
	I do not have time to look into the new resource pack system and learn it but,<br>
	You are more than welcome to contribute (PHP, HTML, XML, jQuery) - <a href="https://github.com/Rgghgh/Mute-Pack-Generator" target="_blank">GitHub</a>.
</div>

<form method="post" onsubmit="return valGen();" action="_generator.php">
	
	<?php 
		$token = md5(uniqid(mt_rand(),true));	
		$_SESSION['token'] = $token;
	?>
	<input type="hidden" name="token" value="<?php echo $token; ?>" />	
	<div class="err"></div>
	<?php include '_options.php'; ?>
	<input name="submit" type="submit" value="1.9" />
	<div id="old-version" class="hide">or click <span class="highlight">here</span> for pre 1.9</div>
</form>
	
<?php include '_footer.php'; ?>