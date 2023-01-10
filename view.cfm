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
                    <cfset dataArg.name = session.dataview>
                    <cfinvoke method="getData" component="components/view" returnVariable="aboutQuery" argumentCollection="#dataArg#">
                    <cfif structKeyExists(session, 'viewflag')>
                    <!--- <cfdump  var="#aboutQuery.FirstName#"> --->
                    <table class="viewTable">
                        <tr class="viewtr">
                            <td class="viewtd listdata">Name</td>
                            <td class="viewtd listdata tddot">:</td>
                            <td class="data listdata">#aboutQuery.FirstName# #aboutQuery.LastName#</td>
                        </tr>
                        <tr class="viewtr">
                            <td class="viewtd listdata">Gender</td>
                            <td class="viewtd listdata tddot">:</td>
                            <td class="data listdata">#aboutQuery.Gender#</td>
                        </tr>
                        <tr class="viewtr">
                            <td class="viewtd listdata">Date Of Birth</td>
                            <td class="viewtd listdata tddot">:</td>
                            <td class="data listdata">#aboutQuery.DateOfBirth#</td>
                        </tr>
                        <tr class="viewtr">
                            <td class="viewtd listdata">Address</td>
                            <td class="viewtd listdata tddot">:</td>
                            <td class="data listdata">#aboutQuery.Address#,#aboutQuery.Street#,#aboutQuery.City#,#aboutQuery.State#</td>
                        </tr>
                        <tr class="viewtr">
                            <td class="viewtd listdata">Email</td>
                            <td class="viewtd listdata tddot">:</td>
                            <td class="data listdata">#aboutQuery.Email#</td>
                        </tr>
                        <tr class="viewtr">
                            <td class="viewtd listdata">Phone Number</td>
                            <td class="viewtd listdata tddot">:</td>
                            <td class="data listdata">#aboutQuery.MobileNumber#</td>
                        </tr>
                    </table>
                    </cfif>
                </div>
                <a href="main.cfm"><input type="submit" value="Close" name="close" class="close"></a>
            </div>
        </cfoutput>
    </body>
</html>