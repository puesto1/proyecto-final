<?php
session_start();

include('config.php');

$email = $_POST['email'];
$password = md5($_POST['password']);

//$email = "usuario@usuario.es";
//$password = md5("usuario");
$query = "SELECT * FROM usuario WHERE email='$email' AND password='$password'";

$result = mysqli_query($mysqli, $query);
$count = mysqli_num_rows($result);

if ($count >= 1) {
    $_SESSION['canAccess'] = true;
    //echo "Login";
    header('Location: dashboard.php');
    exit;
}else {
    $_SESSION['canAccess'] = false;
    //echo "Error";

}
/*while($res = mysqli_fetch_array($result)) {
 echo "<h2>Id:".$res['id']."</h2>";
 echo "<h2>Email:".$res['email']."</h2>";
 echo "<h2>Password:".$res['password']."</h2>";
 echo "<h2>Nombre:".$res['nombre']."</h2>";


}*/

mysqli_close($mysqli);

?>




<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/signin.css" rel="stylesheet">
  </head>

  <body class="text-center">
    <form class="form-signin" method="POST">
      <img class="mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" name="email" class="form-control" placeholder="Email address" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" name="password" class="form-control" placeholder="Password" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
    </form>
  </body>
</html>
