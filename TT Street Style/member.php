<?php include_once "layout/header.php"?>
<html>
<head><title>TT Street Style - Login</title></head>
        <section style="text-align:center;">
        <div id="center">
            <?php
            include "model/connection.php";
                if(isset($_POST['submit'])){
                $username    = mysqli_real_escape_string($conn, $_POST['user']);
                $password = mysqli_real_escape_string($conn, $_POST['pass']);
                $sql = "SELECT * FROM member WHERE username ='$username' and password ='$password' ";
                $query = mysqli_query($conn, $sql);
                $mum_row = mysqli_num_rows($query);
                if($mum_row != 0 ){
                    header("location:index.php");
                }
                else if($mum_row == 0){
                    echo("Wrong username or password !");
                }
                }
            ?>
        </div>
            <h2>Login</h2>
            <form action="member.php" method="POST">
                <input type="text" placeholder="Username" id="user" name="user"><br>
                <input type="password" placeholder="Password" id="pass" name="pass"> <br>
                <button type="submit" name="submit">Login</button>
              </form>
              <hr style="margin: 3px 20%">
            <a href="signup.php" id="signup"><p><u><em>Don't have an account? Sign up here</em></u></p></a>
        </section>
        <footer><p><strong>Name:</strong> Nguyen Huynh Trieu Ti <br><strong>ID:</strong> GCS190914</p></footer>
    </body>
</html>
