<?php
include 'includes/database.php';
include 'includes/capcha.php';
session_start();
if ($_SERVER ['REQUEST_METHOD'] == "POST") {

		$recapcha = $_POST['g-recaptcha-response'];

		if (!Capcha::run($recapcha)) {
			die("Capcha failed.");
		}


		$name = $_POST['name'];
		$type = $_POST['type'];
		$email = $_POST['email'];
		$content = $_POST['content'];
	
		$msg = $content;

		$db = new Database();
		$db->contactMessage($name, $type, $email, $content);

		mail("mpg@rgghgh.com","MPG - $type FROM $name - $email", $msg);
		
}

header("Location: index.php");