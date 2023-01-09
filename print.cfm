<cfdocument format ="pdf" pageHeight="11" Pagewidth="8.5" pagetype="custom" orientation="portrait">
<!--- <cfprint type="pdf" paper="iso-a4" pages="1"> --->
    <html>
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="css/address.css"> 
        </head>
        <body class="pdf">
            <cfoutput>
                <h3 class="pdfdtl">Detailed List</h3>
                <cfinvoke method="getinsert" component="components/register" returnVariable="tableQuery">
                <table class="pdftable">
                    <tr class="pdftr">
                        <th></th>
                        <th class="pdflist">Name</th>
                        <th class="pdflist">Email ID</th>
                        <th class="pdflist">Phone Number</th>
                    </tr>
                    <cfloop query="tableQuery">
                        <tr class="pdftr">
                            <cfset userImg=tableQuery.Gender>
                            <td><img src="aassets/#userImg#.png" class="userImg display"></td>
                            <td class="pdftdprnt">#tableQuery.FirstName# #tableQuery.LastName#</td>
                            <td class="pdftdprnt">#tableQuery.Email#</td>
                            <td class="pdftdprnt">#tableQuery.MobileNumber#</td>
                        </tr>
                    </cfloop>
                </table>
            </cfoutput>
        </body>
    </html>
</cfdocument>