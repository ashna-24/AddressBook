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
                <div class="contact">
                    <p class="modalCreate">CREATE CONTACT</p>
                </div>
                <div class="createPersonal">
                    <p class="personal color">Personal Contact</p>
                    <div class="formData">
                        <form action="" method="post" autocomplete="off" onsubmit="return validatecreate()">
                            <div class="row1 flex">
                                <div class="psnlTop">
                                    <p class="psnlmsg color">Title*</p>
                                    <select class="select" id="select" onblur="validatecreate()" name="title">
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
                                    <input type="text" name="firstname" class="fname" id="first" onblur="validatecreate()">
                                    <span id="first_error" class="error">Required*</span>
                                </div>
                                <div class="psnlbottom">
                                    <p class="psnlmsg color">LastName*</p>
                                    <input type="text" name="lastname" class="fname" id="last" onblur="validatecreate()">
                                    <span id="last_error" class="error">Required*</span>
                                </div>
                            </div>
                            <div class="row2 flex">
                                <div class="psnlgender">
                                    <p class="psnlmsg color">Gender*</p>
                                    <select class="gender" id="gender" onblur="validatecreate()" name="gender">
                                        <option></option>
                                        <option>Male</option>
                                        <option>Female</option>
                                        <option>Other</option>
                                    </select>
                                    <span id="gender_error" class="error">Required*</span>
                                </div>
                                <div class="psnlDOB">
                                    <p class="psnlmsg color">Date of Birth*</p>
                                    <input type="date" class="date" name="date" id="date" onblur="validatecreate()">
                                    <span id="date_error" class="error">Required*</span>
                                </div>
                            </div>
                            <div class="upload">
                                <p class="psnlmsg color">Upload Photo</p>
                                <input type="file" name="file" class="file" id="file" onblur="validatecreate()">
                                <span id="file_error" class="error">Required*</span>
                            </div>
                            <div class="details">
                                <p class="contdetails color">Contact Details</p>
                            </div>
                            <div class="row3 flex">
                                <div class="address">
                                    <p class="psnlmsg color">Address*</p>
                                    <input type="text" name="address" class="date" id="address" onblur="validatecreate()">
                                    <span id="add_error" class="error">Required*</span>
                                </div>
                                <div class="street">
                                    <p class="psnlmsg color">Street*</p>
                                    <input type="text" name="street" class="date" id="street" onblur="validatecreate()">
                                    <span id="street_error" class="error">Required*</span>
                                </div>
                            </div>
                            <div class="row3 flex">
                                <div class="address">
                                    <p class="psnlmsg color">City*</p>
                                    <input type="text" name="city" class="date" id="city" onblur="validatecreate()">
                                    <span id="city_error" class="error">Required*</span>
                                </div>
                                <div class="street">
                                    <p class="psnlmsg color">State*</p>
                                    <input type="text" name="state" class="date" id="state" onblur="validatecreate()">
                                    <span id="state_error" class="error">Required*</span>
                                </div>
                            </div>
                            <div class="row3 flex">
                                <div class="address">
                                    <p class="psnlmsg color">Email*</p>
                                    <input type="email" name="number" class="date" id="number" onblur="validatecreate()">
                                    <span id="phone_error" class="error">Required*</span>
                                </div>
                                <div class="street">
                                    <p class="psnlmsg color">Mobile Number*</p>
                                    <input type="number" name="mobile" class="date" id="mobile" onblur="validatecreate()">
                                    <span id="num_error" class="error">Required*</span>
                                </div>
                            </div>
                            <div class="bottom flex">
                                <input type="submit" name="submit" id="submit" value="Submit" class="createCont color">
                            </div>
                        </form>
                        <cfif structKeyExists(form, 'submit')>
                            <cfinvoke  method="getcontact" component="components/register">
                            <cfset structClear(form)>
                        </cfif>
                    </div>
                </div>
            </div>
            <script src="js/createcontact.js"></script>
        </cfoutput>
    </body>
</html>