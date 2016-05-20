<?php 
include 'includes/database.php';

session_start();
?>
<!DOCTYPE html>
<html>
	<head>
		<!-- PAGE -->
		<title>Mute Pack Generator - <?php echo $tittle; ?></title>
		<meta name="MCequalizer" content="Generate a custom resource pack too mute selected sounds in Minecraft.">
		<link rel="shortcut icon" href="res/icon.ico">
		<link rel="icon" sizes="192x192" href="res/icon.png">
		<meta name="theme-color" content="#303F9F">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="js/jQuery.js"></script>
		<script type="text/javascript" src="js/script.js"></script>
		<link href="css/Site.css" rel="stylesheet" type="text/css" />	
		<?php if( isset($incHead) ) : echo $incHead; endif;?>
	</head>
	<body>
		
		<header>
			<div id="navButton"></div>
			<p>Mute Pack Generator - <?php echo $tittle; ?></p>
		</header>
		
		<nav>
			<ul>
				<li><a href="index.php">Home - Generator</a></li>
				<li><a href="#">Import [Soon]</a></li>
				<li><a href="index.php?t=true">Tutorial</a></li>
				<li><a href="stats.php">Statistics</a></li>
				<li><a href="http://mcping.rgghgh.com" target="_blank">Server Pinger</a></li>
				<br><br>
				<li><a href="about.php">About</a></li>
				<li><a href="contact.php">Contact and Feedback</a></li>
				<li><a href="contact.php?t=br">Bug Reports</a></li>				
			</ul>
		</nav>
		<div id="navShade"></div>
		
		<section id="content">