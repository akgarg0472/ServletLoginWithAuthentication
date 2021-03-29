// method to show alert message containing contact information
function showContactInfo() {
    swal('Email: akgarg0472@gmail.com\n\nContact: 9876543210', {
        className: "swal-text",
    });
}

// javaScript code to animate user icon on login button hover
$("#login-button").hover(function () {
        $("#user-logo-span").addClass("fa-spin")
    },
    function () {
        $("#user-logo-span").removeClass("fa-spin")
    }
)

// this script code will run on the submission of the login form
$("#login_form").on('submit', function (event) {
    event.preventDefault();

    $("#unregister_username_text").hide();
    $("#invalid_credentials_text").hide();

    let loginFormData = $(this).serialize();

    $.post("submit_login_form", loginFormData, function (responseData, status, jqXHR) {
        let response = responseData.toString().trim();
        console.log(response);

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

// this script code will run on the submission of the signup form
$("#signup_form").on('submit', function (event) {
    event.preventDefault();

    let signupFormData = $(this).serialize();
    console.log(signupFormData)

    $.post("submit_signup_form", signupFormData, function (responseData, status, jqXHR) {
        let response = responseData.toString().trim();

        console.log(response);

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
    $("#email-send-spinner").show();
    $("#send-email-button").prop('disabled', true);

    let forgotPasswordFormData = $(this).serialize();

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

$("#forgot_password_otp_form").on('submit', function (event) {
    event.preventDefault();

    let otpEntered = $(this).serialize();

    console.log(otpEntered);

    $.post("verify-otp", otpEntered, function (responseData, status, jqXHR) {
        let response = responseData.toString().trim();
        console.log(response);

        if (response === "200") {
            console.log(response)
            window.location = "change-password"
        } else if (response === "500") {
            swal("OTP mismatched");
        } else {
            swal("Internal Server error");
        }
    })
})

$("#update-password-form").on('submit', function (event) {
    event.preventDefault();

    let password = document.getElementById("new-password").value;
    let confirmPassword = document.getElementById("confirm-new-password").value;
    let newPassword = "new-password=" + confirmPassword;

    if (password === confirmPassword) {
        $.post("update-password", newPassword, function (responseData, status, jqXHR) {
            let response = responseData.toString().trim();

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

    $.post("update-profile-data", formData, function (responseData, status, jqXHR) {
        let response = responseData.toString().trim();

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