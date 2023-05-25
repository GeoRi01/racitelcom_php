<?php
// Assuming you have already established a connection to your MySQL database

// Database credentials
$hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'rctc_admin';

// Create a connection to the MySQL database
$connection = new mysqli($hostname, $username, $password, $database);

// Check if the connection was successful
if ($connection->connect_error) {
    die('Connection failed: ' . $connection->connect_error);
}
// Retrieve the string parameter from the request
$searchString = $_GET['searchString'];

// Construct the SQL query
$query = "SELECT * FROM users WHERE username LIKE '%$searchString%'";

// Execute the query
$result = mysqli_query($connection, $query);

// Create an array to hold the results
$data = array();

// Fetch the data and add it to the array
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $data[] = $row;
    }
}

// Close the database connection
mysqli_close($connection);

// Convert the data array to JSON format
echo json_encode($data);
