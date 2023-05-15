<?php
// connect to sql db 
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');

$con =  mysqli_connect('localhost', 'root', 'IS436','pos');

// get the post records
$email = $_POST['email'];
$pass = $_POST['pass'];

//echo $pass;

$query = "SELECT * FROM customer where pass = '$pass' and User  = '$email'";

//echo $query;
$result = mysqli_query($con,$query);
//echo $result;
$rowres = mysqli_num_rows($result);
//echo $rowres;


if ($rowres > 0){
	echo "found!";
}
else{
	echo "not found.";
}




?>
