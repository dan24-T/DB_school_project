<?php
// Database credentials
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "MovieDB";

// Create MySQL connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection success
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>
<link rel="stylesheet" href="style.css">
<body>
<h1>VMAX</h1>

<!-- Simple nav bar to navigate between pages -->
<nav>
  <a href="movies.php">Movies</a> |
  <a href="add_movie.html">Add Movie</a> |
  <a href="reviews.php">Reviews</a> |
  <a href="add_review.html">Submit Review</a> |
  <a href="register_user.html">Register</a> |
  <a href="directors.php">Directors</a>
</nav>
</body>