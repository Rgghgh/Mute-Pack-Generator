<?php $tittle = "App" ?>
<?php include '_header.php'; ?>

<?php if (! isset ( $_COOKIE ['first'] ) || isset($_GET['t']) ) : include '_tutorial.php'; endif; ?>

<?php     
    if (isset($_SESSION['milestone']))
        header('Location: milestone.php');
?>

<form method="post" onsubmit="return valGen();" action="_generator.php">

	<?php
		$token = md5(uniqid(mt_rand(),true));
		$_SESSION['token'] = $token;
	?>
	<input type="hidden" name="token" value="<?php echo $token; ?>" />
	<div class="err"></div>
	<?php include '_options.php'; ?>
	<input name="submit" type="submit" value="1.9" onclick="setTimeout(function() {location.reload()}, 1000)" />
	<div id="old-version" class="hide">or click <span class="highlight">here</span> for pre 1.9</div>
</form>

<?php if(!isset($_COOKIE['share'])) : ?>
	<div id="shareBar">
		<b>Found this useful?</b> Help others and share!<br>

		<a class="shareLink" target="_blank" id="twitter" href="https://twitter.com/intent/tweet?text=Check out this tool that generates custom resource packs to mute chosen sounds in vanilla Minecraft! http://mc.rgghgh.com/ %23muteminecraft"></a>
		<a class="shareLink" target="_blank" id="facebook" href="https://www.facebook.com/sharer.php?s=100&p[title]=Mute%20Pack%20Generator&p[url]=http://mc.rgghgh.com"></a>
		<a class="shareLink" id="whatsapp" href="whatsapp://send?text=Check out this tool that generates custom resource packs to mute chosen sounds in vanilla Minecraft! http://mc.rgghgh.com/" data-action="share/whatsapp/share"></a>
		<a class="shareLink" target="_blank" id="reddit" href="https://reddit.com/submit?url=http://mc.rgghgh.com&title=Mute Pack Generator for vanilla Minecraft!"></a>
		<a class="shareLink" target="_blank" id="googleplus" href="https://plus.google.com/share?url=http://mc.rgghgh.com"></a>
	</div>
<?php endif; ?>

<?php include '_footer.php'; ?>
