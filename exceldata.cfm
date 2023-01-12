<cfheader name="Content-disposition" value="attachment;filename=export.xls">
<cfcontent type="text/html; charset=ISO-8859-1">
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/address.css"> 
    </head>
    <body>
        <cfoutput>
            <cfinvoke method="getinsert" component="components/register" returnVariable="tableQuery">
            <table cellpadding="1" cellspacing="1" border="1">
                <tr>
                    <th>Name</th>
                    <th>Email ID</th>
                    <th>Phone Number</th>
                </tr>
                <cfloop query="tableQuery">
                    <tr>
                        <td>#tableQuery.FirstName# #tableQuery.LastName#</td>
                        <td>#tableQuery.Email#</td>
                        <td>#tableQuery.MobileNumber#</td>
                    </tr>
                </cfloop>
            </table>
        </cfoutput>
    </body>
</html>