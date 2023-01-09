<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/address.css"> 
        <link rel="stylesheet" href="aassets/modal.css">
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(session,'userflag')>
                <cfinclude template="mainheader.cfm">

                <div class="content">
                    <div class="contentTop">
                        <div class="contentImg flex">
                            <a href="pdfdata.cfm"><img src="aassets/pdfimg.png" alt="Not found" class="download"></a>
                            <a href="exceldata.cfm"><img src="aassets/excel.png" alt="Not found" class="download"></a>
                            <a href="print.cfm"><img src="aassets/print.png" alt="Not found" class="download"></a>
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
                                            <cfinclude template="create.cfm">
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
                                            <cfset userImg=tableQuery.Gender>
                                            <td class="conttd"><img src="aassets/#userImg#.png" class="userImg"></td>
                                            <td class="conttd">#tableQuery.FirstName# #tableQuery.LastName#</td>
                                            <td class="conttd">#tableQuery.Email#</td>
                                            <td class="conttd">#tableQuery.MobileNumber#</td>
                                            <td class="conttd">
                                                <button class="edit" type="submit" onclick="document.getElementById('edit').style.display='block'">
                                                    <a url="edit.cfm?title=#tableQuery.Title#&fname=#tableQuery.FirstName#&lname=#tableQuery.LastName#&gender=#tableQuery.Gender#&DateOfBirth=#tableQuery.DateOfBirth#&Address=#tableQuery.Address#&Street=#tableQuery.Street#&City=#tableQuery.City#&State=#tableQuery.State#&Email=#tableQuery.Email#&MobileNumber=#tableQuery.MobileNumber#">
                                                        Edit
                                                    </a>
                                                </button>
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
                                                <cfset dataview="#tableQuery.FirstName#">
                                                <!--- <a href="view.cfm?name=#tableQuery.FirstName#"> --->
                                                <button class="edit" type="submit" onclick="document.getElementById('view').style.display='block'<!--- &viewdata('#dataview#') --->">
                                                        View
                                                </button>
                                                    <!--- </a> --->
                                                <div id="view" class="w3-modal">
                                                    <div class="w3-content w3-container w3-card" style="width: 700px; display:flex;">
                                                        <div class="w3-container" style="background-color:skyblue; display:flex;">
                                                                <cfinclude template="view.cfm">
                                                            <div class="imgwidth">
                                                                <img src="aassets/user.png" alt="Not found" class="modalimg">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </a>
                                                </div>
                                                <div class="message">
                                                    <span id="pageMsg"></span>
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
        <script src="assets/jquery.js"></script>
        <script src="assets/jquery.min.js"></script>
        <script src="js/view.js"></script>
        <script src="js/createcontact.js"></script>
    </body>
</html>