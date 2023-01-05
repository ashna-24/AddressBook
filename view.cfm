<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/addressbook.css"> 
    </head>
    <body>
        <cfoutput>
            <div class="w3-container w3-white">
                <div class="allAbout">
                    <p class="allAboutCreate color">CONTACT DETAILS</p>
                </div>
                <div class="about">
                    <cfinvoke method="getData" component="components/register" returnVariable="aboutQuery">
                        <p class="data"><span>Name:</span>#aboutQuery.FirstName# #aboutQuery.LastName#</p>
                        <p class="data"><span>Gender:</span>#aboutQuery.Gender#</p>
                        <p class="data"><span>Date Of Birth:</span>#aboutQuery.DateOfBirth#</p>
                        <p class="data"><span>Address:</span>#aboutQuery.Address#,#aboutQuery.Street#,#aboutQuery.City#,#aboutQuery.State#</p>
                        <p class="data"><span>Email:</span>#aboutQuery.Email#</p>
                        <p class="data"><span>Phone Number:</span>#aboutQuery.MobileNumber#</p>
                </div>
            </div>
        </cfoutput>
    </body>
</html>