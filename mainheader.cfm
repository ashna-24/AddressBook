<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/addressbook.css"> 
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
                    <div class="login flex">
                        <div class="loginlogo">
                            <img src="aassets/logout.png" alt="Not found" class="loginimg">
                        </div>
                        <div class="signmsg">
                            <form method="post" name="logout">
                                <input type="submit" value="Logout" name="submit" id="submit" class="signlink">
                            </form>
                            <cfinvoke method="getlogout" component="components/logout">
                        </div>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>