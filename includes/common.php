<?php
$con = mysqli_connect("localhost", "root", "", "ecommerce")or die(mysqli_error($con));
if(!session_id())session_start();
?>
