<?php
include 'db_config.php';

// Query to fetch each director's movies
$result = $conn->query("SELECT name AS Director, title FROM Directors
JOIN Movies ON Directors.director_id = Movies.director_id");

// Display results
echo "<h2>Director Filmography</h2><ul>";
while($row = $result->fetch_assoc()) {
    echo "<li>" . $row["Director"] . " directed '" . $row["title"] . "'</li>";
}
echo "</ul>";

$conn->close();
?>
