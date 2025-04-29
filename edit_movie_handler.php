<?php
include 'db_config.php';

$id = $_POST['movie_id'];
$title = $_POST['title'];
$year = $_POST['year'];
$genre = $_POST['genre'];
$director_id = $_POST['director_id'];

$sql = "UPDATE Movies SET title='$title', release_year=$year, genre='$genre', director_id=$director_id WHERE movie_id=$id";

if ($conn->query($sql) === TRUE) {
    echo "Movie updated successfully! <a href='movies.php'>Back to Movies</a>";
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>
