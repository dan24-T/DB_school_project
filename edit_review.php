<?php
include 'db_config.php';

$id = $_GET['id'];
$result = $conn->query("SELECT * FROM Reviews WHERE review_id = $id");
$row = $result->fetch_assoc();
?>

<h2>Edit Review</h2>
<form action="edit_review_handler.php" method="POST">
  <input type="hidden" name="review_id" value="<?= $row['review_id'] ?>">
  User ID: <input type="number" name="user_id" value="<?= $row['user_id'] ?>"><br><br>
  Movie ID: <input type="number" name="movie_id" value="<?= $row['movie_id'] ?>"><br><br>
  Rating: <input type="number" name="rating" min="1" max="10" value="<?= $row['rating'] ?>"><br><br>
  Review: <textarea name="review_text"><?= $row['review_text'] ?></textarea><br><br>
  <input type="submit" value="Update Review">
</form>
