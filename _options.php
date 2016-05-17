<?php
$filename = 'options.xml';
$xml = simplexml_load_file($filename);
$count = 0;

$importing = isset($selected);
$curr = '';
$inject = '';
if ($importing)
	$curr = array_shift($selected);

foreach ($xml -> children() as $tab) {
	echo "<ul class='tab'><li class='tabLabel'>" . $tab['name'] . "</li>";
	
	foreach ($tab -> children() as $option) {
		
		echo "<li class='option'><div class='optionLabel'><span class='sprite' style='background-position: " . $option['img'] . "'> </span>" . $option['name'] . " <span class='checkAll'></span></div><ul class='optionSubs'>";
		
		foreach ($option -> children() as $sub) {
			
			if ($importing)
				if ($curr == $sub['value']) {
					$inject = 'checked="checked"';
					$curr = array_shift($selected);
				} else
					$inject = '';
			
			echo "<li class='sub'>
				<input type='checkbox' $inject class='subInput' name='c[]' id='$count' value='" . $sub['value'] . "' />				
				<label class='subInputLabel' for='$count'><p>" . $sub['name'] . "</p></label>
				<div class='play'></div>
				</li>";
			
			$count++;
		}
		
		echo "</ul></li>";
	}
	
	echo "</ul>";
}

?>