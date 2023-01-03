<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/address.css">      
    </head>
    <body>
        <cfoutput>
            <div class="header flex">
                <div class="header-left flex">
                    <div class="logo">
                        <img src="aassets/logo .png" alt="Not found">
                    </div>
                    <div class="msg">
                        ADDRESS BOOK
                    </div>
                </div>
                <div class="header_right flex">
                    <div class="signup flex">
                        <div class="signuplogo">
                            <img src="aassets/signup.png" alt="Not found" class="signimg">
                        </div>
                        <div class="signmsg">
                            Sign Up
                        </div>
                    </div>
                    <div class="login flex">
                        <div class="loginlogo">
                            <img src="aassets/login.png" alt="Not found" class="loginimg">
                        </div>
                        <div class="signmsg">
                            Login
                        </div>
                    </div>
                </div>
            </div>

            <div class="main">
                <div class="form flex">
                    <div class="formSide">
                        <img src="aassets/book.png">
                    </div>
                    <div class="form_login">
                        <p class="logintext">Login</p>
                        <form action="" method="post" name="myform" onsubmit="return validateform()">
                            <input type="text" name="uname" class="text" placeholder="Username" id="uname"><br>
                            <span id="uname_error">Please fill this field!</span>
                            <input type="password" name="password" class="text" placeholder="Password" id="pswd"><br>
                            <span id="pswd_error">Please fill this field!</span>
                            <input type="submit" value="Login" name="submit" class="submit">
                        </form>
                        <p>Or Sign In Using</p>
                        <div class="link flex">
                            <img src="aassets/facebook (2).png" alt="Not found">
                            <img src="aassets/Gimg.png" alt="Not found">
                        </div>
                        <p>Don't have an account?<a href="">Register Here</a></p>
                    </div> 
                </div>
            </div>
        </cfoutput>
    </body>
</html>