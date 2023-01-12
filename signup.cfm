<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/address.css"> 
    </head>
    <body>
        <cfoutput>
            <cfinclude  template="header.cfm">

            <div class="main">
                <div class="form flex">
                    <div class="signupSide">
                        <img src="aassets/book.png">
                    </div>
                    <div class="form_login">
                        <p class="logintext">REGISTER</p>
                        <form action="" method="post" name="myform" onsubmit="return validateform()">
                            <input type="text" name="fname" class="text" placeholder="Full Name" id="fname" onblur="validateform()"></br>
                            <span id="fname_error" class="error">Please fill this field!</span>
                            <input type="email" name="mail" class="text" placeholder="Email ID" id="mail" onblur="validateform()"></br>
                            <span id="mail_error" class="error">Please fill this field!</span>
                            <input type="text" name="uname" class="text" placeholder="Username" id="uname" onblur="validateform()"><br>
                            <span id="uname_error" class="error">Please fill this field!</span>
                            <input type="password" name="password" class="text" placeholder="Password" id="pswd" onblur="validateform()"><br>
                            <span id="pswd_error" class="error">Please fill this field!</span>
                            <input type="password" name="conpswd" class="text" placeholder="Conform Password" id="conpswd" onblur="validateform()"><br>
                            <span id="conpswd_error" class="error">Please fill this field!</span>
                            <span id="conform" class="error">Password did not match: Please try again...</span>
                            <input type="submit" value="REGISTER" name="submit" class="submit">
                        </form>
                        <cfif structKeyExists(form, 'submit')>
                            <cfinvoke method="getRegister" component="components/register">
                            <cfset structClear(form)>
                        </cfif>
                    </div>
                </div>
            </div>
            <script src="js/addressbook.js"></script>
        </cfoutput>
    </body>
</html>