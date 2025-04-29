<?php
include 'db_config.php';

$id = $_GET['id'];

$sql = "DELETE FROM Reviews WHERE review_id = $id";

if ($conn->query($sql) === TRUE) {
    echo "Review deleted! <a href='reviews.php'>Back to Reviews</a>";
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>
