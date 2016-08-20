<?php $tittle = "New Milestone!"; ?>
<?php include '_header.php'; ?>

<?php
$milestone = $_SESSION['milestone'];
if ($milestone == null) {
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

    mail("tomer1091@gmail.com", "$milestone milestone broken.", "MPG Milestone broken");
}

?>

    <form method="post" action="#">

        <?php
        $token = 'milestone_' . md5(uniqid(mt_rand(), true));
        $_SESSION['token'] = $token;
        ?>

        <input type="hidden" name="token" value="<?php echo $token; ?>"/>
        <input type="hidden" name="type" value="<?php echo $tittle; ?>"/>

        <div class="card milestone">
            <h3><?php echo $tittle ?></h3>
            <p style="text-align: center;">You have just generated the <span class="err"><?php echo $milestone ?></span><i>th</i>
                Mute Pack! </p>
            <p style="font-size: 14px; text-align: center">We would love to remember this moment you helped us reach,
                enter your name below (optional) then click the send button, and you will be featured in our milestone
                list.<br></p>
            <input placeholder="Name" type="text" name="name">

            <input type="submit" value=" " class="send">
        </div>
    </form>

<?php include '_footer.php'; ?>