<?php
// Include DB connection config
include 'db_config.php';

// Retrieve form values using POST method
$title = $_POST['title'];
$year = $_POST['year'];
$genre = $_POST['genre'];
$director_id = $_POST['director_id'];

// SQL query to insert the new movie
$sql = "INSERT INTO Movies (title, release_year, genre, director_id)
VALUES ('$title', $year, '$genre', $director_id)";

// Execute the query and provide feedback
if ($conn->query($sql) === TRUE) {
    echo "New movie added successfully! <a href='movies.php'>View Movies</a>";
} else {
    echo "Error: " . $conn->error;
}

// Close the connection
$conn->close();
?>
