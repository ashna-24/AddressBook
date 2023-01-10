function viewdata(){
    $.ajax({
        url:'components/view.cfc?method=getData',
        type:'post',
        data:{
            Name: $("#fname").val()
        },
        datatype:"JSON",
        success:function(data){
            alert(data);
        }
    }) 
}