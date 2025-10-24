<?php 
$conn = new mysqli('64.227.134.232', 'root', '231998', 'cms_db', 3306);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
