<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/addressbook.css"> 
    </head>
    <body>
        <cfoutput>
            <cfinclude  template="header.cfm">

            <div class="main">
                <div class="form flex">
                    <div class="formSide">
                        <img src="aassets/book.png">
                    </div>
                    <div class="form_login">
                        <p class="logintext color">LOGIN</p>
                        <form action="" method="post" name="myform" class="myform" onsubmit="return validateform()">
                            <input type="text" name="uname" class="text" placeholder="Username" id="uname" onblur="validateform()"><br>
                            <span id="uname_error" class="error">Please fill this field!</span>
                            <input type="password" name="password" class="text" placeholder="Password" id="pswd" onblur="validateform()"><br>
                            <span id="pswd_error" class="error">Please fill this field!</span>
                            <input type="submit" value="LOGIN" name="submit" class="submit color">
                        </form>
                        <cfif structKeyExists(form,'submit')>
                            <cfinvoke method="getlogin" component="components/login">
                            <cfset structClear(form)>
                        </cfif>
                        <p class="optional">Or Sign In Using</p>
                        <div class="link flex">
                            <img src="aassets/facebook.jpg" alt="Not found" class="linkimg">
                            <img src="aassets/Gimg.png" alt="Not found" class="linkimg">
                        </div>
                        <p class="optional">Don't have an account?<a href="signup.cfm">Register Here</a></p>
                    </div> 
                </div>
            </div>
        </cfoutput>
        <script src="js/addressbook.js"></script>     
    </body>
</html>