<?php
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

// Retrieve the username and password from the POST request
$email = $_POST['email'];
$password = $_POST['password'];

// Prepare and execute the query
$query = "SELECT * FROM subscribers WHERE subs_email = ? AND subs_password = ?";
$statement = $connection->prepare($query);
$statement->bind_param('ss', $email, $password);
$statement->execute();

// Fetch the result
$result = $statement->get_result();

// Check if a matching user was found
if ($result->num_rows === 1) {
    // User validation successful
    echo json_encode(['success' => true]);
} else {
    // User validation failed
    echo json_encode(['success' => false]);
}

// Close the statement and the database connection
$statement->close();
$connection->close();
