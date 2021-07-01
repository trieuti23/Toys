<?php include_once "layout/header.php"?>
<div id="center">
<?php 
include_once "model/connection.php";
    if (isset($_POST["submit"])) {
        $username = $_POST["username"];
        $sql = "SELECT * FROM member WHERE username ='$username'";
        $query = mysqli_query($conn, $sql);
        $mum_row = mysqli_num_rows($query);
        if($mum_row != 0 ){
            Echo "Username has already been taken !";
        }
        else if($mum_row == 0){
            if($_POST["password"] != $_POST["repassword"]) {
                echo "Re-password is different from password!";
            } else {
                $password = $_POST["password"];
                $Fullname = $_POST["fullname"];
                $PhoneNumber = $_POST["phonenumber"];
                $email = $_POST["email"];
                $address = $_POST["address"];
                if ($username == "" || $password == "" || $Fullname == "" || $email == "" || $PhoneNumber == "" || $address == "") {
                    echo "Please fill your information in all textbox !";
                }
                else { 
                    $query = "INSERT INTO member (username, password, Fullname, PhoneNumber, Email, Address ) VALUES ('$username', '$password', '$Fullname', '$PhoneNumber', '$email', '$address')";
                    mysqli_query($conn,$query);
                    header("location:member.php");
                }
            }
        }
    }        
?>
</div>
<html>
<head><title>TT Street Style - Sign up</title></head>
        <section style="text-align: center;">
            <h2 style="text-align: center;">Sign up</h2>
            <div style="margin: auto; padding: 20px;width: 70%;">
                <form action="signup.php" method="POST">
                    <table style="width: 40%;margin: auto; ">
                        <tr>
                            <td>Username:</td>
                            <td><label><input type="text" name="username" id="username"></label></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><label><input type="password" name="password" id="password"></label></td>
                        </tr>
                        <tr>
                            <td>Re-password:</td>
                            <td><label><input type="password" name="repassword" id="repassword"></label></td>
                        </tr>
                        <tr>
                            <td>Fullname:</td>
                            <td><label><input type="text" name="fullname" id="fullname"></label></td>
                        </tr>
                        <tr>
                            <td>Phone number:</td>
                            <td><label><input type="number" name="phonenumber" id="phonenumber"></label></td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><label><input type="email" name="email" id="email"></label></td>
                        </tr>
                        <tr>
                            <td>Address:</td>
                            <td><label><input type="text" name="address" id="address"></label></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;"><button type="submit" name="submit">Join us!</button></td>
                        </tr>
                    </table>
                </form>
            </div>
        </section>
        <footer><p><strong>Name:</strong> Nguyen Huynh Trieu Ti <br><strong>ID:</strong> GCS190914</p></footer>
    </body>
</html>