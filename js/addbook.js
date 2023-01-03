function validateform(){
    var uname= document.getElementById('uname');
    var pswd= document.getElementById('pswd');

    var unamevalidate = validateuname(uname);
    var pswdvalidate = validatepswd(pswd);
    if(unamevalidate && pswdvalidate)
        return true;
    else
        return false;
}

function errorValidate(id){
    document.getElementById(id).style.visibility="visible";
}
  
function successValidate(id){
    document.getElementById(id).innerHTML="";
}

function mailValidate(uname){
    if(uname.value==""){
        errorValidate('uname_error');
        uname.style.border="1px solid red";  
        return false;
    }else{
        successValidate('uname_error');
        uname.style.border="1px solid green";
        return true;
    }
}

function mailValidate(pswd){
    if(pswd.value==""){
        errorValidate('pswd_error');
        pswd.style.border="1px solid red";  
        return false;
    }else{
        successValidate('pswd_error');
        pswd.style.border="1px solid green";
        return true;
    }
}