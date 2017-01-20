<?php
	$tittle = "Contact";
    $incHead = "<script src='https://www.google.com/recaptcha/api.js'></script>";
	if (isset ( $_GET ['t'] )) : $tittle = "Bug Report"; endif;
?>

<?php include '_header.php'; ?>

<form method="post" onsubmit="return validForm();" action="_contact.php">

<?php 
	$token = 'contact_' . md5(uniqid(mt_rand(),true));		
	$_SESSION['token'] = $token;
?>

<input type="hidden" name="token" value="<?php echo $token; ?>" />
<input type="hidden" name="type" value="<?php echo $tittle; ?>" />

<div class="card contanct">
	<h3><?php echo $tittle; ?></h3>
	
	<input placeholder="Name" type="text" name="name" onblur="return validForm();">
	<input placeholder="Email Adress" type="text" name="email" onblur="return validForm();">
	<textarea placeholder="Message" name="content" onblur="return validForm();"></textarea>
    <div class="g-recaptcha" data-sitekey="6LfIhxIUAAAAADWkPE8iDKlzoj_RsH8Yep-7WpO3"></div>
	<input type="submit" value=" " class="send">
</div>
</form>

<?php include '_footer.php'; ?>