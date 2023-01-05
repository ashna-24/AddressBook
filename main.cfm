<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/addressbook.css"> 
        <link rel="stylesheet" href="aassets/modal.css">
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(session,'userflag')>
                <cfinclude template="mainheader.cfm">

                <div class="content">
                    <div class="contentTop">
                        <div class="contentImg flex">
                            <img src="aassets/pdfimg.png" alt="Not found" class="download">
                            <img src="aassets/excel.png" alt="Not found" class="download">
                            <img src="aassets/print.png" alt="Not found" class="download">
                        </div>
                    </div>

                    <div class="contentMain flex">
                        <div class="userContent">
                            <img src="aassets/user.png" alt="Not found" class="loginuser">
                            <div class="nameMain color">
                                <cfinvoke method="getName" component="components/register" returnVariable="result">
                                #result.FullName#
                            </div>
                            <div class="createContact">
                                <button type="submit" name="create" class="create" onclick="document.getElementById('create').style.display='block'" class="w3-button">CREATE CONTACT</button>
                                <div id="create" class="w3-modal">
                                    <div class="w3-content w3-container w3-card" style="width: 700px; display:flex;">
                                        <div class="w3-container" style="background-color:skyblue; display:flex;">
                                            <cfinclude  template="create.cfm">
                                            <div class="imgwidth">
                                                <img src="aassets/user.png" alt="Not found" class="modalimg">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="contentList">
                            <div class="listdtls">
                                <cfinvoke  method="getinsert" component="components/register" returnVariable="tableQuery">
                                <table class="conttable">
                                        <tr class="conttr color">
                                            <th class="contth"></th>
                                            <th class="contth">Name</th>
                                            <th class="contth">Email</th>
                                            <th class="contth">Phone Number</th>
                                            <th class="contth"></th>
                                            <th class="contth"></th>
                                            <th class="contth"></th>
                                        </tr>
                                        <cfloop query="tableQuery">
                                        <tr class="conttr">
                                            <td class="conttd"></td>
                                            <td class="conttd">#tableQuery.FirstName# #tableQuery.LastName#</td>
                                            <td class="conttd">#tableQuery.Email#</td>
                                            <td class="conttd">#tableQuery.MobileNumber#</td>
                                            <td class="conttd">
                                                <button class="edit" type="submit" onclick="document.getElementById('edit').style.display='block'">Edit</button>
                                                <div id="edit" class="w3-modal">
                                                    <div class="w3-content w3-container w3-card" style="width: 700px; display:flex;">
                                                        <div class="w3-container" style="background-color:skyblue; display:flex;">
                                                            <cfinclude  template="edit.cfm">
                                                            <div class="imgwidth">
                                                                <img src="aassets/user.png" alt="Not found" class="modalimg">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="conttd">
                                                <a href="components/delete.cfc?method=deletepage&name=#tableQuery.FirstName#">
                                                    <button class="edit" type="submit">
                                                        Delete
                                                    </button>
                                                </a>
                                            </td>
                                            <td class="conttd">
                                                <button class="edit" type="submit" onclick="document.getElementById('view').style.display='block'">View</button>
                                                <div id="view" class="w3-modal">
                                                    <div class="w3-content w3-container w3-card" style="width: 700px; display:flex;">
                                                        <div class="w3-container" style="background-color:skyblue; display:flex;">
                                                            <cfinclude template="view.cfm">
                                                            <div class="imgwidth">
                                                                <img src="aassets/user.png" alt="Not found" class="modalimg">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </cfloop>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </cfif>
        </cfoutput>
        <script src="js/createcontact.js"></script>
    </body>
</html>