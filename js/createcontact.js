function validatecreate(){
    var select = document.getElementById('select');
    var first = document.getElementById('first');
    var last = document.getElementById('last');
    var gender = document.getElementById('gender');
    var date = document.getElementById('date');
    var file = document.getElementById('file');
    var address = document.getElementById('address');
    var street = document.getElementById('street');
    var city = document.getElementById('city');
    var state = document.getElementById('state');
    var number = document.getElementById('number');
    var mobile = document.getElementById('mobile');

    var selectvalidate = validateselect(select);
    var firstvalidate = validatefirst(first);
    var lastvalidate = validatelast(last);
    var gendervalidate = validategender(gender);
    var datevalidate = validatedate(date);
    var filevalidate = validatefile(file);
    var addressvalidate = validateaddress(address);
    var streetvalidate = validatestreet(street);
    var cityvalidate = validatecity(city);
    var statevalidate = validatestate(state);
    var numbervalidate = validatenumber(number);
    var mobilevalidate = validatemobile(mobile);

    if(selectvalidate && firstvalidate && lastvalidate && gendervalidate && datevalidate && filevalidate && addressvalidate && streetvalidate && cityvalidate && statevalidate && numbervalidate && mobilevalidate)
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

function validateselect(select){
    if(select.value==""){
        errorValidate('select_error');  
        select.style.border="1px solid red";
        return false;
    } else{
        successValidate('select_error');
        select.style.border="1px solid white";
        return true;
    }
}

function validatefirst(first){
    if(first.value==""){
        errorValidate('first_error'); 
        first.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('first_error');
        first.style.border="1px solid white";
        return true;
    }
}

function validatelast(last){
    if(last.value==""){
        errorValidate('last_error'); 
        last.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('last_error');
        last.style.border="1px solid white";
        return true;
    }
}

function validategender(gender){
    if(gender.value==""){
        errorValidate('gender_error');  
        gender.style.border="1px solid red";
        return false;
    }else{
        successValidate('gender_error');
        gender.style.border="1px solid white";
        return true;
    }
}

function validatedate(date){
    if(date.value==""){
        errorValidate('date_error');
        date.style.border="1px solid red";  
        return false;
    }else{
        successValidate('date_error');
        date.style.border="1px solid white";
        return true;
    }
}

function validatefile(file){
    if(file.value==""){
        errorValidate('file_error'); 
        file.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('file_error');
        file.style.border="1px solid white";
        return true;
    }
}

function validateaddress(address){
    if(address.value==""){
        errorValidate('add_error'); 
        address.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('add_error');
        address.style.border="1px solid white";
        return true;
    }
}

function validatestreet(street){
    if(street.value==""){
        errorValidate('street_error');
        street.style.border="1px solid red";  
        return false;
    }else{
        successValidate('street_error');
        street.style.border="1px solid white";
        return true;
    }
}

function validatecity(city){
    if(city.value==""){
        errorValidate('city_error'); 
        city.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('city_error');
        city.style.border="1px solid white";
        return true;
    }
}

function validatestate(state){
    if(state.value==""){
        errorValidate('state_error'); 
        state.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('state_error');
        state.style.border="1px solid white";
        return true;
    }
}

function validatenumber(number){
    if(number.value==""){
        errorValidate('phone_error'); 
        number.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('phone_error');
        number.style.border="1px solid white";
        return true;
    }
}

function validatemobile(mobile){
    if(mobile.value==""){
        errorValidate('num_error'); 
        mobile.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('num_error');
        mobile.style.border="1px solid white";
        return true;
    }
}