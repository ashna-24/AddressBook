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
                            <div class="nameMain">
                                <cfinvoke method="getName" component="components/register" returnVariable="result">
                                #result.FullName#
                            </div>
                            <div class="createContact">
                                <button type="submit" name="create" class="create" onclick="document.getElementById('create').style.display='block'" class="w3-button">CREATE CONTACT</button>
                                <div id="create" class="w3-modal">
                                    <div class="w3-content w3-container w3-card" style="width: 700px">
                                        <div class="w3-container" style="background-color:skyblue; padding-right:200px">
                                            <div class="w3-container w3-white">
                                                <div class="contact">
                                                    <p class="modalCreate">CREATE CONTACT</p>
                                                </div>
                                                <div class="createPersonal">
                                                    <p class="personal">Personal Contact</p>
                                                    <div class="formData">
                                                        <form action="" method="post" autocomplete="off" class="flex">
                                                            <div class="psnlTop">
                                                                <p class="psnlmsg">Title*</p>
                                                                <select class="select">
                                                                    <option></option>
                                                                    <option>Mr.</option>
                                                                    <option>Mrs.</option>
                                                                    <option>Ms.</option>
                                                                    <option>Other</option>
                                                                </select>
                                                            </div>
                                                            <div class="psnlMiddle">
                                                                <p class="psnlmsg">FirstName*</p>
                                                                <input type="text" name="firstname" class="fname">
                                                            </div>
                                                            <div class="psnlbottom">
                                                                <p class="psnlmsg">LastName*</p>
                                                                <input type="text" name="firstname" class="fname">
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="contentList">
                        </div>
                    </div>
                </div>
            </cfif>
        </cfoutput>
    </body>
</html>