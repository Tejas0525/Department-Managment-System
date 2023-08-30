<?php include("header.php");?>
<?php include('db_con.php');?>
<div class="container-fluid">
    <div class="row" id="wrapper">
    <?php require_once'menubar.php';?>
    <div class="col-sm-12">
        <div class="panel panel-default">
        <div class="panel-body">
        

<?php

if (isset($_POST['submit'])){

     $id = $_REQUEST['id'];
     $accession_no = $_POST['accession_no'];
    $title = $_POST['title'];
    $author = $_POST['author'];
    $publication = $_POST['publication'];
    $status = $_POST['status'];

     
     $sql = "UPDATE `library` SET `id`='$id',`accession_no`='$accession_no',`title`='$title',`author`='$author',`publication`='$publication',`status`='$status' WHERE id='$id'";
     $result = mysqli_query($conn,$sql);
     if($result){
     
        header('Location:insert_books.php');
    }else{
        echo "<div class='alert alert-danger'>";
        echo "<strong>Error!</strong> in update.Please try again.";
        echo "</div>";
    }
}

    
?>
<center><h3>Update Books</h3></center>
<hr>

<?php
    $id = $_REQUEST['id'];
    $sql1 = "SELECT * FROM library WHERE id='$id'";
     $result1 = mysqli_query($conn,$sql1);
     while($row = mysqli_fetch_array($result1)){

?>

<form action="book_update.php" method="post" class="form-horizontal" role="form">
            <div class="form-group">
                <label for="id" class="col-sm-2 control-label">Book Number</label>
                <div class="col-sm-7">
                <input type="text" class="form-control" name="id" value="<?= $row['id']; ?>" >
                </div>
            </div>

            <div class="form-group">
                <label for="accession_no" class="col-sm-2 control-label">Accession Number</label>
                <div class="col-sm-7">
                <input type="text" class="form-control" name="accession_no" value="<?= $row['accession_no']; ?>" >
                </div>
            </div>
			
			<div class="form-group">
                <label for="title" class="col-sm-2 control-label">Title</label>
                <div class="col-sm-7">
                <input type="text" class="form-control" name="title" value="<?= $row['title']; ?>" >
                </div>
            </div>

            <div class="form-group">
                <label for="author" class="col-sm-2 control-label">Author</label>
                <div class="col-sm-7">
                <input type="text" class="form-control" name="author" value="<?= $row['author']; ?>" >
                </div>
            </div>

            <div class="form-group">
                <label for="publication" class="col-sm-2 control-label">Publication</label>
                <div class="col-sm-7">
                <input type="text" class="form-control" name="publication" value="<?= $row['publication']; ?>" >
                </div>
            </div>

            <div class="form-group">
                <label for="status" class="col-sm-2 control-label">Available/Not Available</label>
                <div class="col-sm-7">
                <input type="text" class="form-control" name="status" value="<?= $row['status']; ?>" >
                </div>
            </div>
            
            <center><input type="submit" name="submit" value="Update" class="btn btn-primary" style="padding: 10px; width: 100px;"></center>
            <input type="hidden" name="id" value="<?=$id;?>" />
</form>
<br>

<?php
    }

?>
 </div>
 </div>
 </div>
 </div>
 </div>