<?php
include 'db_config.php';

$id = $_GET['id'];

$sql = "DELETE FROM Movies WHERE movie_id = $id";

if ($conn->query($sql) === TRUE) {
    echo "Movie deleted! <a href='movies.php'>Back to Movies</a>";
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>

