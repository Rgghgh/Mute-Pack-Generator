<?php $tittle = "New Milestone!"; ?>
<?php include '_header.php'; ?>

<?php
// for debugging
//$_SESSION['milestone'] = 500;

$milestone = isset($_SESSION['milestone']) ? $_SESSION['milestone'] : false;
if ($milestone === false) {
    header('Location: index.php');
    die();
}


if ($_SERVER ['REQUEST_METHOD'] == "POST") {

    $_SESSION['milestone'] = null;

    $name = null;
    $input = $_POST['name'];
    if ($input != null && $input != '')
        $name = htmlspecialchars(strip_tags(stripslashes($input)), ENT_QUOTES);

    $db = new Database();
    $db->setMilestone($milestone, $name);
    $db->end();

    header('Location: stats.php');
}

?>

    <form method="post" action="#">

        <div class="card milestone">
            <h3><?php echo $tittle ?></h3>
            <p style="text-align: center;">You have just generated the <span class="err"><?php echo $milestone ?></span><i>th</i>
                Mute Pack! </p>
            <p style="font-size: 14px; text-align: center">We would love to remember this moment, that you helped us reach.
                Please tell us your Minecraft username below (optional), then click the send button, so you can be featured in our milestone
                list.<br></p>
            <input placeholder="Name" type="text" name="name">

            <input type="submit" value=" " class="send">
        </div>
    </form>

    <img id="confetti" src="./res/confetti.png" draggable="false">

<?php include '_footer.php'; ?>
