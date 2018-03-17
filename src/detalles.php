<?php

// including the database connection file
include_once("config.php");

$codigo = $_GET['codigo'];
//echo "<h1>$codigo</h1>";
//exit;



?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- <link rel="icon" href="../../../../favicon.ico"> -->

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">
  </head>

  <body>
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Informatica ASIR2</a>
      <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
      <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
          <a class="nav-link" href="index.php">Volver a pagina inicial</a>
        </li>
      </ul>
    </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
            <h1 class="h1">Pagina de detalle de un producto</h1>
            <!--<div class="btn-toolbar mb-2 mb-md-0">
              <div class="btn-group mr-2">
                <button class="btn btn-sm btn-outline-secondary">Share</button>
                <button class="btn btn-sm btn-outline-secondary">Export</button>
              </div>
              <button class="btn btn-sm btn-outline-secondary dropdown-toggle">
                <span data-feather="calendar"></span>
                This week
              </button>
            </div> -->
          </div>
          
          <div>
	<table width='80%' border=0>

	 <thead>
				
  <tr bgcolor='#CCCCCC'>
		<!--<th colspan="5" style=" border:1px solid;"> Nombre de Producto</th>
		</tr>-->
		
		<th style="border:1px solid;">Imagen</th>
		<th style="border:1px solid;">Nombre</th>
		<th style="border:1px solid;">Precio</th>
		<th style="border:1px solid;">Informacion</th>
		<!--<th style="border-bottom:1px solid;">Francia</th>
		<th style="border-bottom:1px solid;">Espa&ntilde;a</th>-->
		</tr>
				</thead>
		
			<!--<tfoot>
		<tr>
			<th rowspan="2"> Total</th>
		<th style="border-bottom:1px solid;">Alemania</th>
		<th style="border-bottom:1px solid;">Italia</th>
		<th style="border-bottom:1px solid;">Francia</th>
		<th style="border-bottom:1px solid;">Espa&ntilde;a</th>
		</tr>
		<tr>
		<th colspan="5" style="border:1px solid;"> Inversiones en millones de Euros</th>
		</tr>
			</tfoot>-->
				
				
	</tr>
  
<!-- Para localizar imagen/información detallada del producto seleccionado en anterior pagina productos.php -->
<?php
   $tipo_detalle = $_GET["codigo"];

   include_once("config.php");

// fetching data in descending order (lastest entry first)
$result = mysqli_query($mysqli, "SELECT * FROM  producto WHERE codigo='$codigo'");
//$result = mysqli_query($mysqli, "SELECT * FROM  producto JOIN
//fabricante ON (producto.codigo_fabricante=fabricante.codigo) WHERE producto.codigo='$codigo'"); 
//while($res = mysqli_fetch_array($result)) {
  $res = mysqli_fetch_array($result);
  
  echo "<tr>";
		echo "<td><img src=\"".$res['imagen']."\" width=\"200\" height=\"200\" /</td>";
		//echo "<td>".$res['codigo']."</td>";
    echo "<td>".$res['nombre']."</td>";
    echo "<td>".$res['precio']."</td>";
    //echo "<td>".$res['codigo_fabricante']."</td>";
    echo "<td>".$res['descripcion']."</td>";
  echo "<td><a href=\"fabricantes.php\">Volver a pagina Fabricantes</a></td>";
  echo "<td><a href=\"productos.php\">Volver a pagina Productos</a></td>"; 
		//echo "<td><a href=\"edit.php?id=$res[id]\">Edit</a> | <a href=\"delete.php?id=$res[id]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a></td>";
	//}
  
	mysqli_close($msqli);
 ?>
</table>
        </div>
    </main>
      
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster 
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../../../assets/js/vendor/popper.min.js"></script>
    <script src="../../../../dist/js/bootstrap.min.js"></script>

    <!-- Icons 
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>

    <!-- Graphs 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script>
      var ctx = document.getElementById("myChart");
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
          datasets: [{
            data: [15339, 21345, 18483, 24003, 23489, 24092, 12034],
            lineTension: 0,
            backgroundColor: 'transparent',
            borderColor: '#007bff',
            borderWidth: 4,
            pointBackgroundColor: '#007bff'
          }]
        },
        options: {
          scales: {
            yAxes: [{
              ticks: {
                beginAtZero: false
              }
            }]
          },
          legend: {
            display: false,
          }
        }
      });
    </script> -->
  </body>
</html>
