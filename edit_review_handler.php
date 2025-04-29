<?php
include 'db_config.php';

$id = $_POST['review_id'];
$user_id = $_POST['user_id'];
$movie_id = $_POST['movie_id'];
$rating = $_POST['rating'];
$text = $_POST['review_text'];

$sql = "UPDATE Reviews SET user_id=$user_id, movie_id=$movie_id, rating=$rating, review_text='$text'
WHERE review_id=$id";

if ($conn->query($sql) === TRUE) {
    echo "Review updated! <a href='reviews.php'>Back to Reviews</a>";
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>
