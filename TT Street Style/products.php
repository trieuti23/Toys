<?php include_once "layout/header.php"?>
<script src="js/alert.js"></script>
<html>
<head><title>TT Street Style - Products</title></head>
        <section style="height:100%">
            <div id="left">
                <fieldset style="height: 40%;">
                    <legend style="font-size: 20px">Categories</legend>
                    <ul style="color: aqua;">
                        <li><strong><a href="#">MALE CHARACTER</a></strong></li>
                        <li><strong><a href="#">FEMALE CHARACTER</a></strong></li>
                    </ul>
                </fieldset>
            </div>
                <div>
                    <fieldset>
                        <legend style="font-size: 30px"><strong>Products</strong></legend>
                        <?php foreach ($products as $product) {?>
                        <div class="product">
                            <a href="productdetail.php"><img src="<?=$product->getImage()?>" style="width:90%;"></a> <br>
                            <span><?=$product->getName()?></span> <br>
                            <span><strong><?=$product->getPrice()?></strong> vnd</span> <br>
                            <button type="submit" name="submit" onclick=buyClick()>Buy</button>
                        </div>
                        <?php } ?>
                    </fieldset>
                </div>
            </section>
        <footer><p><strong>Name:</strong> Nguyen Huynh Trieu Ti <br><strong>ID:</strong> GCS190914</p></footer>
    </body>
</html>