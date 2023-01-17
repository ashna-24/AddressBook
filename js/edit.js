function editData(message){
    $.ajax({
        url:'components/edit.cfc?method=getEditdata',
        type:'post',
        data:{
            method:'getEditdata',
            name: message,
            datatype: 'json'
        },
        success:function(data){
            var obj = JSON.parse(data);
            $('#contactId').val(obj.ID);
            $('#viewselect').val(obj.TITLE);
            $('#viewfirst').val(obj.FIRSTNAME);
            $('#viewlast').val(obj.LASTNAME);
            $('#viewgender').val(obj.GENDER);
            $('#viewdate').val(obj.DOB);
            $('#viewfile').val(obj.FILEUPLOAD);
            $('#viewaddress').val(obj.ADDRESS);
            $('#viewstreet').val(obj.STREET);
            $('#viewcity').val(obj.CITY);
            $('#viewstate').val(obj.STATE);
            $('#viewnumber').val(obj.EMAIL);
            $('#viewmobile').val(obj.MOBILENUMBER);
        }
    });
}