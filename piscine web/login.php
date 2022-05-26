<?php
$login = isset($_POST["login"]) ? $_POST["login"] : "";
$mdp = isset($_POST["mdp"]) ? $_POST["mdp"] : "";

$database = "users";


$db_handle = mysqli_connect('localhost:3308', 'root', '');
$db_found = mysqli_select_db($db_handle, $database);

if($db_found) {
    echo $login , $mdp;
    $sql = "SELECT type FROM users WHERE login='$login' AND mdp='$mdp'";
    $result = mysqli_query($db_handle,$sql);
    $count = mysqli_num_rows($result);

    if ($count == 1) {
        echo "<h1><center> Login successful </center></h1>";
        $row = mysqli_fetch_row($result);
        echo $row[0];
        if($row[0] == 1)
        {
            //c'est bien un admin
            header("Location://php-storm/navigate/reference?project=untitled3&path=admin.php");
            Exit();
        }
    } else {
        echo "<h1> Login failed. Invalid username or password.</h1>";
    }

}


?>

