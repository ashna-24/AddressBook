function viewdata(message){
    $.ajax({
        url:'components/register.cfc?method=getData',
        type:'post',
        data:{
            method:"getData",
            Email: message,
            dataType:"text"
        },
        success:function(data){
            $("#pageMsg").text(data);
        }
    }) 
}