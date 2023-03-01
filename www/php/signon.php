<?php
include "../utils/util.php";

$conn = new mysqli("localhost", "root", "11ee..22", "activetime");
if ($conn->connect_error) {
    die("Failed to connect to the database: " . mysqli_connect_error());
}

$stmt = $conn->prepare("SELECT * FROM students WHERE username=(?)");
$stmt->bind_param("s", $_POST["username"]);
$stmt->execute();
$student = $stmt->get_result();

if ($student->num_rows > 0) {
    $row = $student->fetch_assoc();

    if ($row["password"] == $_POST["password"]) {
        setcookie("username", $row["username"], 0, "/");
        setcookie("classes", $row["classes"], 0, "/");
        setcookie("identifier", $row["permission"], 0, "/");
        $student->close();
        $stmt->close();
        redirect("../default.asp");
    }  else {
        die("Invalid Login Details!");
    }
} else {
    die("Account does not exist!");
}
?>