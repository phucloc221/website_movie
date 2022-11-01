<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "website";
                // Tạo kết nối
    $conn = mysqli_connect($servername, $username, $password, $dbname);
    mysqli_set_charset($conn , 'UTF8'); 
?>