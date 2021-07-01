<?php
class product {
    protected $productID;
    protected $productName;
    protected $productPrice;
    protected $catID;
    protected $image;
    function __construct($productID, $productName, $productPrice, $catID, $image){
        $this->productID = $productID;
        $this->productName = $productName;
        $this->productPrice = $productPrice;
        $this->catID = $catID;
        $this->image = $image;
    }
    function getID(){
        return $this->productID;
    }
    function getName(){
        return $this->productName;
    }
    function getPrice(){
        return $this->productPrice;
    }
    function getCatID(){
        return $this->catID;
    }
    function getImage(){
        return $this->image;
    }
}
?>