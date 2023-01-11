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
            /* $("input[value='viewfirst']").html(obj.FIRSTNAME); */
            /* $('#viewid').html(obj.FIRSTNAME);
            $('#viewlne').html(obj.LASTNAME);
            $('#viewGndr').html(obj.GENDER);
            $('#viewdob').html(obj.DOB);
            $('#viewadd').html(obj.ADDRESS);
            $('#viewsrt').html(obj.STREET);
            $('#viewcty').html(obj.CITY);
            $('#viewste').html(obj.STATE);
            $('#viewmail').html(obj.EMAIL);
            $('#viewnum').html(obj.MOBIENUMBER); */
        }
    });
}