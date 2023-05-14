<?php

include("dbconnection.php");
$conn = dbconnection();

$query = "SELECT * FROM `users`";

$exe = mysqli_query($conn, $query);

$arr = [];

while ($row = mysqli_fetch_array($exe)) {
    $arr[] = $row;
}

print(json_encode($arr));
