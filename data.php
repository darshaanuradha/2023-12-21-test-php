<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<?php
$server = "localhost";
$username = "root";
$password = "";
$dbname = "php_test";

$con = mysqli_connect($server, $username, $password, $dbname);
if (!$con) {
    echo "Connection failed: " . mysqli_connect_error();
}

$name =$_GET['name'];
$email =$_GET['email'];
$password =$_GET['password'];
$address =$_GET['address'];
$city =$_GET['city'];
$state =$_GET['state'];
$zip =$_GET['zip'];

$sqlCreate = "INSERT INTO `students01` (`student_name`, `student_email`, `student_password`, `student_address`, `student_city`, `student_state`, `student_zip`)
             VALUES ('$name', '$email', '$password', '$address', '$city', '$state', '$zip')";

if ($con->query($sqlCreate) === TRUE) {
    echo "<h1 class='text-center bg-warning'>Record inserted successfully!</h1>";
} else {
    echo "Error: " . $con->error;
}

$sqlSelect = "SELECT * FROM `students01`";

$results = $con->query($sqlSelect);
$result=mysqli_fetch_assoc($results);
while($result=mysqli_fetch_assoc($results)){
    


?>

<div class="container bg-info">
    <h1>Name :<?php echo $result['student_name'] ?></h1>
    <h1>email :<?php echo $result['student_email'] ?></h1>
    <h1>address :<?php echo $result['student_address'] ?></h1>
    <h1>city :<?php echo $result['student_city'] ?></h1>
    <h1>state:<?php echo $result['student_state'] ?></h1>
    <br>
   
</div>


<?php } ?>

