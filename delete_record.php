<?php

include("dbconnection.php");
$conn = dbconnection();

if (isset($_POST["id"])) {
    $id = $_POST["id"];
} else return;

$query = "DELETE FROM `user_table` WHERE uld='$id'";
$exe = mysqli_query($conn, $query);
$arr = [];
if ($exe) {
    $arr["success"] = "true";
} else {
    $arr["success"] = "false";
}
print(json_encode($arr));
