<?php
//echo "<h1>Dashboard</h1>";
session_start();
$_SESSION['canAccess'] == false; 
    //echo "Login";
    header('Location: index.php');
    exit;


?>