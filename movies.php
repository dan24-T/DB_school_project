<?php
include 'db_config.php';

// Retrieve all movies
$result = $conn->query("SELECT * FROM Movies");

// Display movie data
echo "<h2>Movie List</h2><ul>";
while($row = $result->fetch_assoc()) {
    echo "<li>";
    echo $row["title"] . " (" . $row["release_year"] . ") - " . $row["genre"];
    echo " | <a href='edit_movie.php?id=" . $row["movie_id"] . "'>Edit</a>";
    echo " | <a href='delete_movie.php?id=" . $row["movie_id"] . "' onclick=\"return confirm('Are you sure?')\">Delete</a>";
    echo " | <a href='add_review.html?movie_id=" . $row["movie_id"] . "'>Review this Movie</a>";
    echo "</li>";
}
echo "</ul>";

$conn->close();
?>
