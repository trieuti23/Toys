<?php
include_once "function.php";
include_once "load.php";
$c = isset($_GET["c"]) ? $_GET["c"] : "home";
$a = isset($_GET["a"]) ? $_GET["a"] : "list";

$c = $c."control";
$control = new $c();
$control->$a();
?>