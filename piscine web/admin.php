<?php
echo ("connexion admin succeed");
$ID_M=isset($_POST["choice"])?($_POST["choice"]): "";
$first_name=isset($_POST["choice"])?($_POST["choice"]): "";
$choice=isset($_POST["choice"])?($_POST["choice"]): "";
$choice=isset($_POST["choice"])?($_POST["choice"]): "";


$database = "users.med";
$choice=isset($_POST["choice"])?($_POST["choice"]): "";

$db_handle = mysqli_connect('localhost:3308', 'root', '');
$db_found = mysqli_select_db($db_handle, $database);


switch($choice){


    case 1 : $sql=" INSERT INTO users.med ( 
}