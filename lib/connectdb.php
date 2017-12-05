<?php

$conn=mysqli_connect("localhost","root","","bangiay_v2");
mysqli_set_charset($conn, "utf8");
if (!$conn) {
    die("Kết nối thất bại: " . mysqli_connect_error());
}


// $conn=mysqli_connect("sql307.byethost33.com","b33_20983983","admin1ad1","b33_20983983_bangiay_v2");
// mysqli_set_charset($conn, "utf8");
// if (!$conn) {
    // die("Kết nối thất bại: " . mysqli_connect_error());
// }

?>