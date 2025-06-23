<?php
$host = "localhost";
$userName = "root";
$password = "";
$dbName = "online_book_store_db";


$conn = new mysqli($host, $userName, $password, $dbName);


if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
?>