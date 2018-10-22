<html>
<head>

</head>
<body>
<?php
if (isset($_REQUEST["name"])) {
    $nombreUser = $_REQUEST["name"];
}


if (empty($_REQUEST)) {

    die("Faltan parametros");
}

echo "<p>Bienvenido $nombreUser  </p>";

function check()
{
  // 0 = Piedra
  // 1 = Papel
  // 2 = Tijera
    
 $user = $_POST["comboJugadas"];
 $maqui = rand(0,2);
 if( $user == 0 && $maqui == 0){
     
     echo "Empate, Ambos Piedra";
 }
 
 if( $user == 0 && $maqui == 1){
     
     echo "Has Perdido, Seleccionaste Piedra y la maquina papel";
 }
 
 if( $user == 0 && $maqui == 2){
     
     echo "Has Ganado Seleccionaste piedra y la maquina tijeras";
 }
 
 if( $user == 1 && $maqui == 0){
     
     echo "Has ganado, seleccionaste Papel y la maquina Piedra";
 }
 
 if( $user == 1 && $maqui == 1){
     
     echo "Empate, ambos papel";
 }
 
 if( $user == 1 && $maqui == 2){
     
     echo "Has perdido, Seleccionaste papel y la maquina tijeras";
 }
 
 if( $user == 2 && $maqui == 0){
     
     echo "Has perdido, seleccionaste Tijeras y la maquina piedra";
 }
 
 if( $user == 2 && $maqui == 1){
     
     echo "Has ganado, seleccionaste tijeras y la maquina papel";
 }
 
 if( $user == 2 && $maqui == 2){
     
     echo "Empatas, ambos tijeras   ";
 }
 
 if($user == "LogOut"){
     
     echo "$user";
 }
 
}

if (isset($_POST['comboJugadas'])){
    
    check();
}

?>

<form method="POST">
		<select name="comboJugadas">
			<option value=0>Piedra</option>
			<option value=1>Papel</option>
			<option value=2>Tijera</option>
			
		<input type="submit" value="Jugar" name="activar"> 
		
		<a href="index.php">LogOut</a>
		</select>
	</form>
	
</body>
</html>