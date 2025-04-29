<?php
include 'db_config.php';

$id = $_GET['id'];
$result = $conn->query("SELECT * FROM Movies WHERE movie_id = $id");
$row = $result->fetch_assoc();
?>

<h2>Edit Movie</h2>
<form action="edit_movie_handler.php" method="POST">
  <input type="hidden" name="movie_id" value="<?= $row['movie_id'] ?>">
  Title: <input type="text" name="title" value="<?= $row['title'] ?>"><br><br>
  Year: <input type="number" name="year" value="<?= $row['release_year'] ?>"><br><br>
  Genre: <input type="text" name="genre" value="<?= $row['genre'] ?>"><br><br>
  Director ID: <input type="number" name="director_id" value="<?= $row['director_id'] ?>"><br><br>
  <input type="submit" value="Update Movie">
</form>
