<?php

	include("db_con.php");

	if (isset($_REQUEST['id']))
	 {
	 $id = $_REQUEST['id'];
	 
	 $result = mysqli_query($conn,"DELETE FROM library WHERE id='$id'"); 
	 if($result){
	 
	 header('Location:insert_books.php');
	}else{
		echo "error!";
	 }
	}
?>