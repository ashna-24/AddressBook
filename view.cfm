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
                    <cfset dataArg=structNew()>
                    <cfset dataArg.name=url.name>
                    <cfinvoke method="getData" component="components/register" returnVariable="aboutQuery" argumentCollection="#dataArg#">
                    <cfif url.name eq aboutQuery.FirstName>
                    <table class="viewTable">
                        <tr class="viewtr">
                            <td class="viewtd">Name</td>
                            <td class="viewtd">:</td>
                            <td class="data">#aboutQuery.FirstName# #aboutQuery.LastName#</td>
                        </tr>
                        <tr class="viewtr">
                            <td class="viewtd">Gender</td>
                            <td class="viewtd">:</td>
                            <td class="data">#aboutQuery.Gender#</td>
                        </tr>
                        <tr class="viewtr">
                            <td class="viewtd">Date Of Birth</td>
                            <td class="viewtd">:</td>
                            <td class="data">#aboutQuery.DateOfBirth#</td>
                        </tr>
                        <tr class="viewtr">
                            <td class="viewtd">Address</td>
                            <td class="viewtd">:</td>
                            <td class="data">#aboutQuery.Address#,#aboutQuery.Street#,#aboutQuery.City#,#aboutQuery.State#</td>
                        </tr>
                        <tr class="viewtr">
                            <td class="viewtd">Email</td>
                            <td class="viewtd">:</td>
                            <td class="data">#aboutQuery.Email#</td>
                        </tr>
                        <tr class="viewtr">
                            <td class="viewtd">Phone Number</td>
                            <td class="viewtd">:</td>
                            <td class="data">#aboutQuery.MobileNumber#</td>
                        </tr>
                    </table>
                    <cfelse>
                        <cflocation  url="../main.cfm">
                    </cfif>
                        <!--- <p class="data"><span>Name:</span>#aboutQuery.FirstName# #aboutQuery.LastName#</p>
                        <p class="data"><span>Gender:</span>#aboutQuery.Gender#</p>
                        <p class="data"><span>Date Of Birth:</span>#aboutQuery.DateOfBirth#</p>
                        <p class="data"><span>Address:</span>#aboutQuery.Address#,#aboutQuery.Street#,#aboutQuery.City#,#aboutQuery.State#</p>
                        <p class="data"><span>Email:</span>#aboutQuery.Email#</p>
                        <p class="data"><span>Phone Number:</span>#aboutQuery.MobileNumber#</p> --->
                </div>
            </div>
        </cfoutput>
    </body>
</html>