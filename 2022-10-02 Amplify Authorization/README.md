# Amplify Authorization

Application that allows user to create an account and login to their accounts

## References

* This example is taken from this source, https://github.com/graphicbeacon/amplify_flutter_authflow



## Features used in the example

### Sign up the user

To sign up the user , we pass the user data to Amplify.Auth.signUpUser()

### Confirm the user

To confirm the user’s email , we pass the confirmation code to Amplify.Auth.confirmSignUp()

### Resend the confirmation code

To request the new confirmation code, we send username to Amplify.Auth.resendSignUpCode()

### Sign in

To sign in, we pass login information to Amplify.Auth.signInUser()

### Reset Password

To request an reset password operation, we send the email to Amplify.Auth.resetPassword()

### Confirm Reset Password

To reset the password, we pass username, new password and confirmation code to Amplify.Auth.confirmResetPassword()


##Complatibility test

| Android Emulator | ios Emulator| iPhone 11(iOS 16) | macOs (12.5.1)| Chrome |
|:--------------|:--------------:|:--------------:|:--------------:|:--------------:|
|O|O|O|x|x|
