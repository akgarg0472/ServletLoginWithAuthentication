// method to show alert message containing contact information
function showContactInfo() {
    swal('Email: akgarg0472@gmail.com\n\nContact: 9876543210', {
        className: "swal-text",
    });
}

// javaScript code to animate user icon on login button hover
$("#login-button").hover(function () {
        $("#user-logo-span").addClass("fa-spin");
    },
    function () {
        $("#user-logo-span").removeClass("fa-spin");
    }
)

// this script code will run on the submission of the login form to login to existing account
$("#login_form").on('submit', function (event) {
    event.preventDefault();
    let loginFormData = $(this).serialize();

    $("#login-button").prop('disabled', true);
    $("#my-login-spinner").show();

    $.post("submit_login_form", loginFormData, function (responseData) {
        let response = responseData.toString().trim();
        $("#login-button").prop('disabled', false);
        $("#my-login-spinner").hide();

        if (response === "200") {
            location.href = "profile";
        } else if (response === "404") {
            swal("Email not registered");
        } else if (response === "500") {
            swal("Authentication failed");
        } else {
            swal("Please enter username and password");
        }
    });
})

// this script code will run on the submission of the signup form for new user registration
$("#signup_form").on('submit', function (event) {
    event.preventDefault();
    let signupFormData = $(this).serialize();

    $("#signup-button").prop('disabled', true);
    $("#my-signup-spinner").show();

    $.post("submit_signup_form", signupFormData, function (responseData, status, jqXHR) {
        let response = responseData.toString().trim();
        $("#signup-button").prop('disabled', false);
        $("#my-signup-spinner").hide();

        if (response === "1") {
            swal("Thank you for registering with us!", "You will be now redirected to login page!", "success").then((value => {
                window.location = "login";
            }))
        } else if (response === "0") {
            swal("Username already registered");
        } else if (response === "-1") {
            swal("Email already registered");
        } else if (response === "500") {
            swal("Password mismatch");
        } else {
            swal("Unexpected error occurred");
        }
    })
})

// this script code will run on the submission of the forgot password form
$("#forgot_password_form").on('submit', function (event) {
    event.preventDefault();
    let forgotPasswordFormData = $(this).serialize();

    $("#email-send-spinner").show();
    $("#send-email-button").prop('disabled', true);

    $.post("submit_forgot_password_form", forgotPasswordFormData, function (responseData, status, jqXHR) {
        let response = responseData.toString().trim();
        $("#email-send-spinner").hide();
        $("#send-email-button").prop('disabled', false);

        if (response === "404") {
            swal("Email id is not registered");
        } else if (response === "200") {
            swal("OTP sent successfully");
            $("#forgot_password_form").hide();
            $("#forgot_password_otp_form").show();
        } else if (response === "500") {
            swal("Error sending OTP to email");
        } else {
            swal("Internal Server error");
        }
    })
})

// this script code will execute when user enters the otp code
$("#forgot_password_otp_form").on('submit', function (event) {
    event.preventDefault();
    let otpEntered = $(this).serialize();

    $.post("verify-otp", otpEntered, function (responseData, status, jqXHR) {
        let response = responseData.toString().trim();

        if (response === "200") {
            window.location = "change-password"
        } else if (response === "500") {
            swal("OTP mismatched");
        } else {
            swal("Internal Server error");
        }
    })
})

// this script code will run after the submission of page that comes after the successful OTP entering by user
$("#update-password-form").on('submit', function (event) {
    event.preventDefault();

    let password = document.getElementById("new-password").value;
    let confirmPassword = document.getElementById("confirm-new-password").value;
    let newPassword = "new-password=" + confirmPassword;

    if (password === confirmPassword) {
        $("#my-change-password-spinner").show();
        $("#change-password-button").prop('disabled', true);

        $.post("update-password", newPassword, function (responseData, status, jqXHR) {
            let response = responseData.toString().trim();
            $("#my-change-password-spinner").hide();
            $("#change-password-button").prop('disabled', false);

            if (response === "200") {
                swal("Password successfully updated, Redirecting to login page")
                setTimeout(function () {
                    window.location = "login"
                }, 2500);
            } else if (response === "500") {
                swal("Password updation failed");
            } else {
                swal("Internal server error");
            }
        })
    } else {
        swal("Passwords mismatch");
    }
})


// this script code will run on the submission of the profile update form
$("#update-profile-form").on('submit', function (event) {
    event.preventDefault();
    let formData = $(this).serialize();

    $("#update-button-edit-profile").prop('disabled', true);
    $("#cancel-button-edit-profile").prop('disabled', true);

    $.post("update-profile-data", formData, function (responseData, status, jqXHR) {
        let response = responseData.toString().trim();
        $("#update-button-edit-profile").prop('disabled', false);
        $("#cancel-button-edit-profile").prop('disabled', false);

        if (response === "405") {
            updateProfileStatus("Blank password not allowed", "text-danger");
        } else if (response === "200") {
            updateProfileStatus("Profile successfully updated", "text-success");
        } else if (response === "500") {
            updateProfileStatus("Profile updation failed", "text-dark");
        } else if (response === "404") {
            updateProfileStatus("Password mismatched, Please check", "text-warning");
        } else {
            updateProfileStatus("Internal server error occurred", ".text-danger");
        }
    })
})

// method to update the profile update result message and color using Bootstrap color classes
// this method is used by the profile update form submission script
function updateProfileStatus(response, color) {
    let element = document.getElementById("update-profile-result-message");
    element.innerHTML = response;
    element.className = color;

    $("#update-profile-result-div").show();

    setTimeout(function () {
        element.innerHTML = "";
        element.classList.remove(color)
        $("#update-profile-result-div").hide();
        if (response === "Profile successfully updated") {
            window.location = "profile"
        }
    }, 1000);
}