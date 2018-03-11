<?php

include('config.php');

//$email = $_POST['email'];
//$password = md5($_POST['password']);

$email = "usuario@usuario.es";
$password = md5("usuario");
$query = "SELECT * FROM usuario WHERE email='$email' AND password='$password'";

$result = mysqli_query($mysqli, $query);

while($res = mysqli_fetch_array($result)) {
 echo "<h2>Id:".$res['id']."</h2>";
 echo "<h2>Email:".$res['email']."</h2>";
 echo "<h2>Password:".$res['password']."</h2>";
 echo "<h2>Nombre:".$res['nombre']."</h2>";


}

mysqli_close($mysqli);

?>
