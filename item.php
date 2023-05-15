<?php
// connect to sql db 
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');

$con = mysqli_connect('localhost', 'root', 'IS436','pos');

// get the post records
$tiid = $_POST['tiid'];
$tiname = $_POST['tiname'];
$tidesc = $_POST['tidesc'];

// database insert SQL code
$sql = "INSERT INTO `items` (`item_id`, `iname`, `idesc`) VALUES ('$tiid', '$tiname', '$tidesc')";

// insert in database 
$rs = mysqli_query($con, $sql);

if($rs)
{
	echo "Contact Records Inserted";
}

?>
