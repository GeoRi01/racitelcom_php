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

// Fetch all the records from the products table
$query = "SELECT product_name, product_image, product_price FROM products";
$result = mysqli_query($connection, $query);

$response = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        // Convert the blob image data to base64 encoding
        $imageData = base64_encode($row["product_image"]);

        // Create an array with the product name and the base64-encoded image data
        $product = array(
            "productName" => $row["product_name"],
            "productPrice" => $row["product_price"],
            "imageData" => $imageData
        );

        // Add the product to the response array
        array_push($response, $product);
    }
}

// Close the database connection
mysqli_close($connection);

// Return the response as JSON
header('Content-Type: application/json');
echo json_encode($response);
?>
