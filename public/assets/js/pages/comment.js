$(document).ready(function(){
    $('tbody').on('click','tr td .btnToggleStatus',function(){
        var comment_id = $(this).attr('data-content');
        var base_url = $(this).attr('data-content');
        var _token = $('input[name="_token"]').val();
        // console.log(comment_id);
        $.ajax({
            url:  '/comments/update-status',
            type:'post',
            data:{comment_id,_token},
            success:function(data){
                console.log(data)
                location.reload();
            }
        })
    })


})