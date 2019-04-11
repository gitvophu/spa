$(document).ready(function(){
    $('#btnContact').on('click',function(e){
        e.preventDefault();
        var name =  $('input[name="name"]').val();
        var email = $('input[name="email"]').val();
        var message = $('#message').val();
        var phone = $('input[name="phone"]').val();
       var _token = $('input[name="_token"]').val();
        $.ajax({
            url:'admin/message/create-message',
            type:'post',
            data:{name,email,message,phone,_token},
            success:function(data){
                console.log(data.email)
            }
        })
    })
})