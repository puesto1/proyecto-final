<?php
//echo "<h1>Dashboard</h1>";
session_start();
if ($_SESSION['canAccess'] == false) {
    //echo "Login";
    header('Location: index.php');
    exit;
}
    echo "<h1> Bienvenido Dashboard</h1>";




?>