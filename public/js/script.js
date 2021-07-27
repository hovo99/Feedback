$(document).ready(function() {
    $("#basic-form").validate({
        rules: {
            first_name : {
                required: true,
                minlength: 3
            },
            last_name: {
                required: true,
                minlength: 3
            },
            mail: {
                required: true,
                email: true
            },
            message: {
                required: true,
                minlength: 15
            },
        },
        messages : {
            first_name : {
                required: "Please enter your First Name",
                minlength: "First Name should be at least 3 characters"
            },
            last_name: {
                required: "Please enter your Last Name",
                minlength: "Last Name should be at least 3 characters"
            },
            mail: {
                required: "Please enter your E-mail",
                email: "The email should be in the format: abc@domain.abc"
            },
            message: {
                required: "Please enter your Message",
                minlength: "Message should be at least 15 characters"
            },
        }
    });
});