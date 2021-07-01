<?php
define("servername","localhost");
define("database","TT Street Style");
define("username","root");
define("pass","");
define("port", "3306");
$conn = new mysqli(	servername, username, pass, database, port) ;
if ($conn->connect_error) {
    die($conn->connect_error);
}
?>  