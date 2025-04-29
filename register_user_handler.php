<?php
include 'db_config.php';

$username = $_POST['username'];
$email = $_POST['email'];

$sql = "INSERT INTO Users (username, email)
VALUES ('$username', '$email')";

if ($conn->query($sql) === TRUE) {
    echo "User registered successfully! <a href='movies.php'>Submit Review</a>";
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>
