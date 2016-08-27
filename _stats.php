<?php
$db = new Database();

// total

$sql = "SELECT count FROM stats WHERE sound='total'";
$res = mysqli_fetch_array($db->query($sql));

$total = $res ['count'];

// milestones

$sql = "SELECT milestone,time,name FROM milestones";
$res = $db->query($sql);
$milestones = "";
while ($val = $res->fetch_array(MYSQLI_BOTH)) {

    $milestone = $val['milestone'];
    $name = $val ['name'] ? $val ['name'] : 'anonymous';
    $date = $val ['time'] ? $val ['time'] : 'next milestone...';

    if ($val['time'])
        $milestones .= <<< END
        <div class="milestone-breaker">
            <div class="milestone-name">$name</div>
              
            <img src="https://crafatar.com/renders/head/$name"/>

            <div class="milestone-val">$milestone</div>
            <div class="milestone-date">$date</div>
        </div>
END;

    else
        $milestones .= <<< END
        <div class="milestone-breaker">
            <div class="milestone-val">$milestone</div>
            <div class="milestone-date">$date</div>
        </div>
END;
}

// g1 - Top Sounds

$sql = "SELECT * FROM stats WHERE sound != 'total' AND count != 0 ORDER BY count DESC LIMIT 5";
$res = $db->query($sql);
$g1 = "";

while ($val = $res->fetch_array(MYSQLI_BOTH)) {
    $g1 .= "{ label:'" . $val ['sound'] . " - " . $val ['sub'] . "' , value:" . $val ['count'] . "} ,";
}

// g2 - All

$sql = "SELECT sound,sub,count FROM stats WHERE sound != 'total' ORDER BY count DESC";
$res = $db->query($sql);
$g2 = "";
while ($val = $res->fetch_array(MYSQLI_BOTH)) {
    $g2 .= "<li><i>" . $val ['sound'] . " / " . $val ['sub'] . "</i> - <b> " . $val ['count'] . "</b> </li>";
}

// g3 - Grouped

$sql = "SELECT sound,AVG(count) AS 'sum' FROM stats WHERE sound != 'total' AND count != 0 GROUP BY sound ORDER BY sum DESC LIMIT 5";
$res = $db->query($sql);
$g3 = "";
while ($val = $res->fetch_array(MYSQLI_BOTH)) {
    $g3 .= "{ label:'" . $val ['sound'] . "' , value:" . round($val ['sum']) . "} ,";
}

// g4 - All Grouped

$sql = "SELECT sound,AVG(count) AS 'sum' FROM stats WHERE sound != 'total' GROUP BY sound ORDER BY sum DESC";
$res = $db->query($sql);
$g4 = "";
while ($val = $res->fetch_array(MYSQLI_BOTH)) {
    $g4 .= "<li><i>" . $val ['sound'] . "</i> - <b> " . round($val ['sum']) . "</b> </li>";
}

$db->end();

?>