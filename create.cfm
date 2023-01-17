<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/address.css"> 
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(session,'userflag')>
                <div class="w3-container w3-white">
                    <div class="contact">
                        <p class="modalCreate">CREATE CONTACT</p>
                    </div>
                    <div class="createPersonal">
                        <p class="personal color">Personal Contact</p>
                        <div class="formData">
                            <form action="" method="post" id="createForm" autocomplete="off" enctype="multipart/form-data" onsubmit="return validatecreate()">
                                <div class="row1 flex">
                                    <div class="psnlTop">
                                        <p class="psnlmsg color">Title*</p>
                                        <input type="hidden" name="createtitle_cfformrequired" value="You must enter a Title.">
                                        <select class="select" id="select" onblur="validatecreate()" name="createtitle" value="">
                                            <option></option>
                                            <option>Mr.</option>
                                            <option>Mrs.</option>
                                            <option>Ms.</option>
                                            <option>Other</option>
                                        </select>
                                        <span id="select_error" class="error">Required*</span>
                                    </div>
                                    <div class="psnlMiddle">
                                        <p class="psnlmsg color">FirstName*</p>
                                        <input type="hidden" name="createfirst_cfformrequired" value="You must enter a Firstname.">
                                        <input type="text" name="createfirst" class="fname" id="first" onblur="validatecreate()">
                                        <span id="first_error" class="error">Required*</span>
                                    </div>
                                    <div class="psnlbottom">
                                        <p class="psnlmsg color">LastName*</p>
                                        <input type="hidden" name="createlast_cfformrequired" value="You must enter a Lastname.">
                                        <input type="text" name="createlast" class="fname" id="last" onblur="validatecreate()">
                                        <span id="last_error" class="error">Required*</span>
                                    </div>
                                </div>
                                <div class="row2 flex">
                                    <div class="psnlgender">
                                        <p class="psnlmsg color">Gender*</p>
                                        <input type="hidden" name="creategender_cfformrequired" value="You must enter a Gender.">
                                        <select class="gender" id="gender" onblur="validatecreate()" name="creategender">
                                            <option></option>
                                            <option>Male</option>
                                            <option>Female</option>
                                            <option>Other</option>
                                        </select>
                                        <span id="gender_error" class="error">Required*</span>
                                    </div>
                                    <div class="psnlDOB">
                                        <p class="psnlmsg color">Date of Birth*</p>
                                        <input type="hidden" name="createdate_cfformrequired" value="You must enter a DOB.">
                                        <input type="date" class="date" name="createdate" id="date" onblur="validatecreate()">
                                        <span id="date_error" class="error">Required*</span>
                                    </div>
                                </div>
                                <div class="upload">
                                    <p class="psnlmsg color">Upload Photo</p>
                                    <input type="hidden" name="createfile_cfformrequired" value="You must enter a file.">
                                    <input type="file" name="createfile" class="file" id="file" onblur="validatecreate()">
                                    <span id="file_error" class="error">Required*</span>
                                </div>
                                <div class="details">
                                    <p class="contdetails color">Contact Details</p>
                                </div>
                                <div class="row3 flex">
                                    <div class="address">
                                        <p class="psnlmsg color">Address*</p>
                                        <input type="hidden" name="createaddress_cfformrequired" value="You must enter a Address.">
                                        <input type="text" name="createaddress" class="date" id="address" onblur="validatecreate()">
                                        <span id="add_error" class="error">Required*</span>
                                    </div>
                                    <div class="street">
                                        <p class="psnlmsg color">Street*</p>
                                        <input type="hidden" name="createstreet_cfformrequired" value="You must enter a Street.">
                                        <input type="text" name="createstreet" class="date" id="street" onblur="validatecreate()">
                                        <span id="street_error" class="error">Required*</span>
                                    </div>
                                </div>
                                <div class="row3 flex">
                                    <div class="address">
                                        <p class="psnlmsg color">City*</p>
                                        <input type="hidden" name="createcity_cfformrequired" value="You must enter a City.">
                                        <input type="text" name="createcity" class="date" id="city" onblur="validatecreate()">
                                        <span id="city_error" class="error">Required*</span>
                                    </div>
                                    <div class="street">
                                        <p class="psnlmsg color">State*</p>
                                        <input type="hidden" name="createstate_cfformrequired" value="You must enter a State.">
                                        <input type="text" name="createstate" class="date" id="state" onblur="validatecreate()">
                                        <span id="state_error" class="error">Required*</span>
                                    </div>
                                </div>
                                <div class="row3 flex">
                                    <div class="address">
                                        <p class="psnlmsg color">Email*</p>
                                        <input type="hidden" name="createnumber_cfformrequired" value="You must enter a Email.">
                                        <input type="text" name="createnumber" class="date" id="number" onblur="validatecreate()">
                                        <span id="phone_error" class="error">Required*</span>
                                    </div>
                                    <div class="street">
                                        <p class="psnlmsg color">Mobile Number*</p>
                                        <input type="hidden" name="createmobile_cfformrequired" value="You must enter a Mobile number.">
                                        <input type="number" name="createmobile" class="date" id="mobile" onblur="validatecreate()">
                                        <span id="num_error" class="error">Required*</span>
                                    </div>
                                </div>
                                <div class="bottom flex">
                                    <input type="submit" name="create" id="submit" value="Submit" class="editSubmit">
                                </div>
                            </form>
                            <cfif structKeyExists(form, 'create')>
                                <cfinvoke method="getcontact" component="components/create">
                                <cfset structClear(form)>
                            </cfif>
                        </div>
                    </div>
                </div>
            <cfelse>
                <cflocation url="../login.cfm" addtoken="no">
            </cfif>
            <script src="js/createcontact.js"></script>
        </cfoutput>
    </body>
</html>