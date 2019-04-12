$(document).ready(function () {
    $('#btnContact').on('click', function (e) {
        e.preventDefault();
        var name = $('input[name="name"]').val();
        var email = $('input[name="email"]').val();
        var message = $('#message').val();
        var phone = $('input[name="phone"]').val();
        var _token = $('input[name="_token"]').val();
        console.log(window.location.origin);
        $.ajax({
            url: window.location.origin + '/admin/message/create-message',
            type: 'post',
            data: {
                name,
                email,
                message,
                phone,
                _token
            },
            success: function (data) {
                //    console.log(data.name[0]);
                //    console.log("a");
                if (!data.hasOwnProperty('success')) {
                    if (data.hasOwnProperty('name')) {
                        swal({
                            title: "Cảnh báo !!!",
                            text: data.name[0],
                            icon: "warning",
                            button: true,
                            dangerMode: true,
                        })
                    }
                    if (data.hasOwnProperty('message')) {
                        swal({
                            title: "Cảnh báo !!!",
                            text: data.message[0],
                            icon: "warning",
                            button: true,
                            dangerMode: true,
                        })
                    }
                    if (data.hasOwnProperty('email')) {
                        swal({
                            title: "Cảnh báo !!!",
                            text: data.email[0],
                            icon: "warning",
                            button: true,
                            dangerMode: true,
                        })
                    }
                    if (data.hasOwnProperty('phone')) {
                        swal({
                            title: "Cảnh báo !!!",
                            text: data.phone[0],
                            icon: "warning",
                            button: true,
                            dangerMode: true,
                        })
                    }
                }
                else{
                    swal({
                        title: "Thông báo !!!",
                        text: data.success,
                        icon: "success",
                        button: true,
                    })
                    $('#contact-modal').modal('hide')
                }

            }
        })
    })
})