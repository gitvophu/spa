$(document).ready(function(){
    $('#contact-btn').on('click',function(e){
        e.preventDefault();
        $('#contact-modal').modal('show')
    })

    // $('#btnComment').on('click',function(e){
    //     e.preventDefault();
    //     var message = $('#message').val();
    //     var name = $('name').val();
    //     console.log(message + ":::" + name);
    // })
})