function viewData(message){
    $.ajax({
        url:'components/view.cfc?method=getData',
        type:'post',
        data:{
            method:'getData',
            Email: message,
            datatype: 'json'
        },
        success:function(data){
            var obj = JSON.parse(data);
            $('#viewid').html(obj.FIRSTNAME);
            $('#viewlne').html(obj.LASTNAME);
            $('#viewGndr').html(obj.GENDER);
            $('#viewdob').html(obj.DOB);
            $('#viewfile').html(obj.FILEUPLOAD);
            $('#viewadd').html(obj.ADDRESS);
            $('#viewsrt').html(obj.STREET);
            $('#viewcty').html(obj.CITY);
            $('#viewste').html(obj.STATE);
            $('#viewmail').html(obj.EMAIL);
            $('#viewnum').html(obj.MOBILENUMBER);
        }
    });
}