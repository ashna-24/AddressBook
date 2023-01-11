<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/addressbook.css"> 
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(session,'userflag')>
                <div class="w3-container w3-white">
                    <div class="contact">
                        <p class="modalCreate">EDIT CONTACT</p>
                    </div>
                    <div class="createPersonal">
                        <p class="personal color">Personal Contact</p>
                        <div class="formData">
                            <form action="main.cfm" method="post" autocomplete="off">
                                <div class="row1 flex">
                                    <div class="psnlTop">
                                        <p class="psnlmsg color">Title*</p>
                                        <select class="select" id="select" name="title">
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
                                        <input type="text" name="firstname" class="fname" value="viewfirst">
                                        <!--- <span id="viewfirst" class="fname"></span> --->
                                        <span id="first_error" class="error">Required*</span>
                                    </div>
                                    <div class="psnlbottom">
                                        <p class="psnlmsg color">LastName*</p>
                                        <input type="text" name="lastname" class="fname" id="last"<!---  value="#session.lname#" --->>
                                        <span id="last_error" class="error">Required*</span>
                                    </div>
                                </div>
                                <div class="row2 flex">
                                    <div class="psnlgender">
                                        <p class="psnlmsg color">Gender*</p>
                                        <select class="gender" id="gender" name="gender">
                                            <option></option>
                                            <option>Male</option>
                                            <option>Female</option>
                                            <option>Other</option>
                                        </select>
                                        <span id="gender_error" class="error">Required*</span>
                                    </div>
                                    <div class="psnlDOB">
                                        <p class="psnlmsg color">Date of Birth*</p>
                                        <input type="date" class="date" name="date" id="date" <!---  value="#session.dob#" --->>
                                        <span id="date_error" class="error">Required*</span>
                                    </div>
                                </div>
                                <div class="upload">
                                    <p class="psnlmsg color">Upload Photo</p>
                                    <input type="file" name="file" class="file" id="file">
                                    <span id="file_error" class="error">Required*</span>
                                </div>
                                <div class="details">
                                    <p class="contdetails color">Contact Details</p>
                                </div>
                                <div class="row3 flex">
                                    <div class="address">
                                        <p class="psnlmsg color">Address*</p>
                                        <input type="text" name="address" class="date" id="address"<!---  value="#session.address#" --->>
                                        <span id="add_error" class="error">Required*</span>
                                    </div>
                                    <div class="street">
                                        <p class="psnlmsg color">Street*</p>
                                        <input type="text" name="street" class="date" id="street"<!---  value="#session.street#" --->>
                                        <span id="street_error" class="error">Required*</span>
                                    </div>
                                </div>
                                <div class="row3 flex">
                                    <div class="address">
                                        <p class="psnlmsg color">City*</p>
                                        <input type="text" name="city" class="date" id="city" <!--- value="#session.city#" --->>
                                        <span id="city_error" class="error">Required*</span>
                                    </div>
                                    <div class="street">
                                        <p class="psnlmsg color">State*</p>
                                        <input type="text" name="state" class="date" id="state" <!--- value="#session.state#" --->>
                                        <span id="state_error" class="error">Required*</span>
                                    </div>
                                </div>
                                <div class="row3 flex">
                                    <div class="address">
                                        <p class="psnlmsg color">Email*</p>
                                        <input type="text" name="number" class="date" id="number"<!---  value="#session.email#" --->>
                                        <span id="phone_error" class="error">Required*</span>
                                    </div>
                                    <div class="street">
                                        <p class="psnlmsg color">Mobile Number*</p>
                                        <input type="number" name="mobile" class="date" id="mobile" <!--- value="#session.phone#" --->>
                                        <span id="num_error" class="error">Required*</span>
                                    </div>
                                </div>
                                <div class="bottom">
                                    <!--- <a href="main.cfm">
                                        <input type="submit" name="formsubmit" id="formsubmit" value="Submit" class="editSubmit">
                                    </a> --->
                                    <a href="main.cfm" class="editSubmit">
                                        Submit</a>
                                </div>
                            </form>
                            <cfif structKeyExists(form, 'formsubmit')>
                                <cfinvoke method="getEditdata" component="components/register">
                                <cfset structClear(form)>
                            </cfif>
                        </div>
                    </div>
                </div>
            <cfelse>
                <cflocation url="login.cfm" addtoken="no">
            </cfif>
        </cfoutput>
    </body>
</html>