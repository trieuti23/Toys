<?php
class productcnt 
{
    function fetchAll() 
	{
        global $conn;
        $products = [];
        $sql = "SELECT * FROM product";
        $result = $conn->query($sql);
        IF($result&& $result->num_rows>0)
		{
            while($row = $result->fetch_assoc())
			{
                    $product = new Product(
                    $row["productID"], $row["productName"], $row["productPrice"], $row["catID"], $row["image"]);
                    $products[] = $product;
            }  
			
        }
        return $products;
    }

    function getAll()
	{
        return $this->fetchAll();
    }
}
?> 