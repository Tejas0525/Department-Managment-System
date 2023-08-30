<?php include("header.php");?>
<?php include('db_con.php');?>
<div class="container-fluid">
    <div class="row" id="wrapper">
    <?php require_once'menubar.php';?>
    <div class="col-sm-12">
        <div class="panel panel-default">
        <div class="panel-body">
        
<center><h1>Insert a new Book</h1></center>
    <hr>
 
<div class="col-sm-10 col-sm-offset-2">
 <?php
 	if(isset($_POST['submit'])){
 		$id = $_POST['id'];
 		$accession_no = $_POST['accession_no'];
		$title = $_POST['title'];
        $author = $_POST['author'];
        $publication = $_POST['publication'];
        $status = $_POST['status'];


        if($id!=NULL && $accession_no!=NULL && $title!=NULL && $author!=NULL && $publication!=NULL && $status!=NULL){

 		$sql = "INSERT INTO library (id,accession_no,title,author,publication,status) VALUES ('$id','$accession_no','$title','$author','$publication','$status')";
 		$result = mysqli_query($conn,$sql);
 		if(!$result){
            echo "<div class='alert alert-success'>";
            echo "<strong>Error!</strong> in submisssion.Please try again.";
            echo "</div>";
 		}else{
 			echo "<div class='alert alert-success'>";
            echo "<strong>Success!</strong> Insert Successfully";
            echo "</div>";
 		}
 	}
 }
 ?>

<form action="insert_books.php" method="post" class="form-horizontal" role="form">


            <div class="form-group">
                <label for="id" class="col-sm-2 control-label">Book Number:</label>
                <div class="col-sm-7">
                <input type="text" class="form-control" name="id" placeholder="Book Number" >
                </div>
            </div>
			
			<div class="form-group">
                <label for="accession_no" class="col-sm-2 control-label">Accession Number:</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" name="accession_no" placeholder="Accession Number">
                </div>
            </div>

            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">Title:</label>
                <div class="col-sm-7">
                <input type="text" class="form-control" name="title" placeholder="Name of the Book" >
                </div>
            </div>

             <div class="form-group">
                <label for="author" class="col-sm-2 control-label">Author:</label>
                <div class="col-sm-7">
                <input type="text" class="form-control" name="author" placeholder="Author" >
                </div>
            </div>
            
            <div class="form-group">
                <label for="publication" class="col-sm-2 control-label">Publication:</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" name="publication" placeholder="Publication">
                </div>
            </div>

            <div class="form-group">
                <label for="status" class="col-sm-2 control-label">Status:</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" name="status" placeholder="Available/Not Available">
                </div>
            </div>

           
 
            <input type="submit" name="submit" value="Submit" class="btn btn-primary" style="padding: 10px; width: 100px; left:100px;">
            <br>
                <br>
                    <br>
                        <br>
 </form>
</div>

<?php
        $sql1 = "SELECT * FROM library";
        $result1 = mysqli_query($conn,$sql1);
                echo "<table class='table table-bordered'>";
                echo "<thead>";
                echo "<tr>";
                echo "<th>Book Number</th>";
                echo "<th>Accession Number</th>";
                echo "<th>Title</th>";
                echo "<th>Author</th>";
                echo "<th>Publication</th>";
                echo "<th>Status</th>";
                echo "<th>Actions</th>";
                echo "</tr>";
                echo "</thead>";
            while($row1=mysqli_fetch_array($result1)){
                echo "<tbody>";
                echo "<tr class='success'>";
                echo "<td>".$row1['id']."</td>";
                echo "<td>".$row1['accession_no']."</td>";
                echo "<td>".$row1['title']."</td>";
                echo "<td>".$row1['author']."</td>";
                echo "<td>".$row1['publication']."</td>";
                echo "<td>".$row1['status']."</td>";

                echo '<td><a href="book_update.php?id=' . $row1['id'] . '"><b class="btn btn-warning">Update</b></a>' ;
                echo '<a href="delete_book.php?id=' . $row1['id'] . '" onclick=\'return confirm("Are you sure you want to delete this record?")\'><b class="btn btn-danger">Delete</b></a></td>' ;
                echo "</tr>";
                echo "</tbody>";
            }
                echo "</table>";
    ?>

 </div>
 </div>
 </div>
 </div>
 </div>