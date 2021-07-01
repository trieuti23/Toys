<?php
class productcontrol {
    function list() {
        $productcnt = new productcnt();
        $products = $productcnt->getAll();
        include_once "products.php";
    }
}
?>