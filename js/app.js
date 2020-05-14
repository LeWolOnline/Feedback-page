$(document).ready(function () {
    $("#add_feedback").validate({
        lang: 'ru',
        rules: {
            name: {
                required: true
            },
            email: {
                required: true,
                email: true
            },
            text_feedback: {
                required: true,
                maxlength: 500
            }
        }
    })
})
