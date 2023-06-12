<?php
// Establish a MySQL connection
$hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'rctc_admin';

$connection = new mysqli($hostname, $username, $password, $database);

// Check if the connection was successful
if ($connection->connect_error) {
    die('Connection failed: ' . $connection->connect_error);
}

// Query the database to retrieve the BLOB data
$query = "SELECT bills_pdf FROM customer_bills WHERE bills_month = 'June'";
$result = mysqli_query($connection, $query);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $pdfData = $row['bills_pdf'];

    // Encode the BLOB data using base64 encoding
    $encodedData = base64_encode($pdfData);

    // Return the encoded data as the response
    echo $encodedData;
} else {
    // Handle the case when the PDF file is not found
    echo "PDF file not found";
}

mysqli_close($connection);
?>
