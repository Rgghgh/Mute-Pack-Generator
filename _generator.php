<?php
include 'includes/database.php';
session_start();
if ($_SERVER ['REQUEST_METHOD'] == "POST") {
	if (! isset($_POST ['c'])) {
		header('Location: index.php');
		die();
		return;
	}
	
	$files = $_POST ['c'];
	
	$zip = new ZipArchive();
	$tmp_file = tempnam('.', '');
	$sound_file = file_get_contents('zipfiles/sound.ogg');
	$zip->open($tmp_file, ZipArchive::CREATE);
	
	$zip->addFromString('pack.mcmeta', file_get_contents('zipfiles/pack.mcmeta'));
	$zip->addFromString('pack.png', file_get_contents('zipfiles/pack.png'));
	$zip->addFromString('import.txt', json_encode($files));
	
	foreach ($files as $file) {
		$paths = explode(';', $file);
		foreach ($paths as $value) {
			$zip->addFromString("assets/minecraft/sounds/" . $value, $sound_file);
		}
	}
	
	$zip->close();
	
	header('Content-disposition: attachment; filename=Pack.zip');
	header('Content-type: application/zip');
	readfile($tmp_file);
	
	unlink($tmp_file);
	
	$db = new Database();
	$db->updateStats($files);
	$db->end();
}
?>