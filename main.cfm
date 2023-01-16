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
                            <a href="pdfdata.cfm">
                                <img src="aassets/pdfimg.png" alt="Not found" class="download">
                            </a>
                            <a href="exceldata.cfm">
                                <img src="aassets/excel.png" alt="Not found" class="download">
                            </a>
                            <a onclick="printSection()">
                                <img src="aassets/print.png" alt="Not found" class="download">
                            </a>
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
                                <button type="submit" name="create" class="create" onclick="document.getElementById('create').style.display='block'">CREATE CONTACT</button>
                                <div id="create" class="w3-modal">
                                    <div class="w3-content w3-container w3-card" style="width: 700px; display:flex;">
                                        <span onclick="document.getElementById('create').style.display='none'" class="w3-button w3-display-topright">&times;</span>
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
                                        <cfset local.userImg=tableQuery.Gender>
                                        <tr class="conttr">
                                            <td class="conttd">
                                                <img src="aassets/#local.userImg#.png" class="userImg">
                                            </td>
                                            <td class="conttd">#tableQuery.FirstName# #tableQuery.LastName#</td>
                                            <td class="conttd">#tableQuery.Email#</td>
                                            <td class="conttd">#tableQuery.MobileNumber#</td>
                                            <td class="conttd">
                                                <cfset session.fname = tableQuery.FirstName>
                                                <button class="edit" type="submit" onclick="document.getElementById('edit').style.display='block'; editData('#session.fname#')">
                                                    Edit
                                                </button>
                                                <div id="edit" class="w3-modal">
                                                    <div class="w3-content w3-container w3-card" style="width: 700px; display:flex;">
                                                        <span onclick="document.getElementById('edit').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                                                        <div class="w3-container" style="background-color:skyblue; display:flex;">
                                                            <cfinclude  template="edit.cfm">
                                                            <div class="imgwidth">
                                                                <img src="aassets/user.png" alt="Not found" class="edtviwimg">
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
                                                <cfset session.dataview=tableQuery.FirstName>
                                                <button class="edit" type="submit" id="viewSubmit" onclick="document.getElementById('view').style.display='block'; viewData('#session.dataview#')">
                                                    View
                                                </button>
                                                <div id="view" class="w3-modal">
                                                    <div class="w3-content w3-container w3-card" style="width: 700px; display:flex;">
                                                        <span onclick="document.getElementById('view').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                                                        <div class="w3-container" style="background-color:skyblue; display:flex;">
                                                            <cfinclude template="view.cfm">
                                                            <div class="imgwidth">
                                                                <cfset local.userImg=tableQuery.Gender>
                                                                <img src="aassets/user.png" alt="Not found" class="edtviwimg">
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
                <div id="print">
                    <h3 class="printdtl">Detailed List</h3>
                    <cfinvoke method="getinsert" component="components/register" returnVariable="tableQuery">
                    <table class="printtable">
                        <tr class="printtr">
                            <th></th>
                            <th class="printlist">Name</th>
                            <th class="printlist">Email ID</th>
                            <th class="printlist">Phone Number</th>
                        </tr>
                        <cfloop query="tableQuery">
                            <tr class="printtr">
                                <cfset local.userImg=tableQuery.Gender>
                                <td><img src="aassets/#local.userImg#.png" class="userImg display"></td>
                                <td class="printtd">#tableQuery.FirstName# #tableQuery.LastName#</td>
                                <td class="printtd">#tableQuery.Email#</td>
                                <td class="printtd">#tableQuery.MobileNumber#</td>
                            </tr>
                        </cfloop>
                    </table>
                </div>
            <cfelse>
                <cflocation  url="../login.cfm" addtoken="no">
            </cfif>
        </cfoutput>
        <script src="aassets/jquery.js"></script>
        <script src="aassets/jquery.min.js"></script>
        <script src="js/view.js"></script>
        <script src="js/edit.js"></script>
        <script src="js/createcontact.js"></script>
        <script src="js/print.js"></script>
    </body>
</html>