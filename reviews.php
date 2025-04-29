<?php
include 'db_config.php';

$result = $conn->query("SELECT Reviews.review_id, username, title, rating FROM Users
JOIN Reviews ON Users.user_id = Reviews.user_id
JOIN Movies ON Reviews.movie_id = Movies.movie_id");

echo "<h2>User Reviews</h2><ul>";

while($row = $result->fetch_assoc()) {
    echo "<li>User: <span style='color:#008000'>" . $row["username"] . "</span> reviewed '" . $row["title"] . "' - Rating: " . $row["rating"];
    echo " | <a href='edit_review.php?id=" . $row["review_id"] . "'>Edit</a>";
    echo " | <a href='delete_review.php?id=" . $row["review_id"] . "' onclick=\"return confirm('Delete review?')\">Delete</a>";
    echo "</li>";
}

echo "</ul>";

$conn->close();
?>
