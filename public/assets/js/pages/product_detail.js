$(document).ready(function(){
    $('#contact-btn').on('click',function(e){
        e.preventDefault();
        $('#contact-modal').modal('show')
    })

    $('#btnSubmit_Product').on('click',function(e){
        e.preventDefault();
        var _token = $('input[name="_token"]').val();
        var message = $('#message').val();
        var name = $('#name').val();
        var product_id = $('#product_id').val();
        var type = $('#type').val();
        var asset = $('#asset').val();
        console.log(message + ":::" + name + ':::' + _token);
        $.ajax({
            url:"/product-detail/comment-ajax",
            type:'post',
            data:{message,name,_token,type,product_id},
            success:function(data){
                var comment_element = 
                `<li class="media">
                    <div class="media-left">
                        <img alt="" src="${asset}assets/img/user.png">
                    </div>
                    <div class="media-body">
                        <h5 class="comment-author"><span>${data.name}</span></h5>
                        <p class="comment">${data.message}</p>
                        <span class="comment-date">${data.date}</span>
                    </div>
                </li>`;
            $('.media-list').append(comment_element);
            $('#message').attr("value","");
            $('#name').text("value","");
                console.log(data);
            }
        })
    })
})