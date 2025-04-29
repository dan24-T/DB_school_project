<?php
include 'db_config.php';

$user_id = $_POST['user_id'];
$movie_id = $_POST['movie_id'];
$rating = $_POST['rating'];
$review_text = $_POST['review_text'];

$sql = "INSERT INTO Reviews (user_id, movie_id, rating, review_text)
VALUES ($user_id, $movie_id, $rating, '$review_text')";

if ($conn->query($sql) === TRUE) {
    echo "Review submitted successfully! <a href='reviews.php'>See Reviews</a>";
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>
