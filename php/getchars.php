<!DOCTYPE html>
<html>
<head>
<!-- <style>
table {
    width: 100%;
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid black;
    padding: 5px;
}

th {text-align: left;}

h1{
    font-size: 4px;
}
</style> -->
<link href="https://fonts.googleapis.com/css2?family=Righteous&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="styles/main_style.css">
</head>
<body>

<?php
$q = intval($_GET['q']);

$con = mysqli_connect('localhost:3308','dev04dbuser','FM04web2020','dev04db');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"ajax_demo");
$sql="SELECT * FROM star_wars WHERE id = '".$q."'";
$result = mysqli_query($con,$sql);
$resultCheck = mysqli_num_rows($result);

if($resultCheck > 0)
{
    while($row = mysqli_fetch_array($result)) {
        echo "<p class='char-info'>".$row['FirstName']." ".$row['LastName']."</p>";
        echo "<p class='char-info'>"."Species: ".$row['Species']."</p>";
        echo "<p class='char-info'>"."Affiliation: ".$row['Affiliation']."</p>";
        echo "<p class='char-info'>"."Homeworld: ".$row['Homeworld']."</p>";
        // echo "<img src= ".$row['Image'].">";
        echo "<div class='card' style='background-image: url(".$row['Image'].");'></div>
        <div class='holo'></div>";
    }
}


mysqli_close($con);
?>
</body>
</html>