<?php include("header.php");?>
<?php include('db_con.php');?>
<div class="container-fluid">
    <div class="row" id="wrapper">
    <?php require_once'menubar.php';?>
    <div class="col-sm-12">
        <div class="panel panel-default">
        <div class="panel-body">
        
<center><h1>Insert a new Project</h1></center>
	<hr>

<div class="col-sm-10 col-sm-offset-2">
 <?php
 	if(isset($_POST['submit'])){
 		$room_no = $_POST['id'];
 		$room_name = $_POST['title'];
		$room_type = $_POST['year'];
 		$room_capacity = $_POST['refrence'];

        if($id!=NULL && $title!=NULL && $year!=NULL && $refrence!=NULL){

 		$sql = "INSERT INTO projects (id,title,year,refrence) VALUES ('$id','$title','$year','$refrence')";
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

<form action="projects.php" method="post" class="form-horizontal" role="form">


            <div class="form-group">
                <label for="id" class="col-sm-2 control-label">Project no.:</label>
                <div class="col-sm-7">
                <input type="text" class="form-control" name="id" placeholder="Enter Project no" >
                </div>
            </div>
			
			<div class="form-group">
                <label for="title" class="col-sm-2 control-label">Project Title:</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" name="title" placeholder="Enter Project Title">
                </div>
            </div>

            <div class="form-group">
                <label for="year" class="col-sm-2 control-label">Year:</label>
                <div class="col-sm-7">
                <input type="text" class="form-control" name="id" placeholder="Enter Year of Project" >
                </div>
            </div>

            <div class="form-group">
                <label for="refrence" class="col-sm-2 control-label">Refrence:</label>
                <div class="col-sm-7">
                    <input type="document-file" class="form-control" name="refrence" placeholder="Choose file">
                </div>
            </div>

            <input type="submit" name="submit" value="Submit" class="btn btn-primary" style="padding: 10px; width: 100px; left:20px;">
			<br>
				<br>
					<br>
 </form>
 </div>
	
	<?php
		$sql1 = "SELECT * FROM projects";
		$result1 = mysqli_query($conn,$sql1);
				echo "<table class='table table-bordered'>";
                echo "<thead>";
                echo "<tr>";
                echo "<th>Project No.</th>";
                echo "<th>Project Title</th>";
                echo "<th>Year</th>";
                echo "<th>Refrence</th>";
				echo "<th>Actions</th>";
                echo "</tr>";
                echo "</thead>";
			while($row1=mysqli_fetch_array($result1)){
				echo "<tbody>";
                echo "<tr class='success'>";
                echo "<td>".$row1['id']."</td>";
               echo "<td>".$row1['title']."</td>";
                echo "<td>".$row1['year']."</td>";
                echo "<td>".$row1['refrence']."</td>";

                echo '<td><a href="update_projects.php?id=' . $row1['id'] . '"><b class="btn btn-warning">Update</b></a>' ;
				echo '<a href="delete_project.php?id=' . $row1['id'] . '" onclick=\'return confirm("Are you sure you want to delete this record?")\'><b class="btn btn-danger">Delete</b></a></td>' ;
                echo "</tr>";
                echo "</tbody>";
			}
				echo "</table>";
	?>


 </div>
 </div>
 </div>
 </div>