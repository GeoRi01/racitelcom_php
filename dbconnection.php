<?php

function dbconnection()
{
    $conn = mysqli_connect("localhost", "root", "", "rctc_admin");
    return $conn;
}
