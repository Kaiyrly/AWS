import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter_login/flutter_login.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //data that will be sent to authorization functions
  late LoginData? _data;
  //boolean value for checking if user signed in without any exceptions
  bool _isSignedIn = false;

  //login
  Future<String?> _onLogin(LoginData data) async {
    try {
      // amplify's signing function
      final res = await Amplify.Auth.signIn(
        username: data.name,
        password: data.password,
      );

      _isSignedIn = res.isSignedIn;
      _data = null;
    } on AuthException catch (e) {
      //if user is already signed in then signout the user and try again
      if (e.message.contains('already a user signed in')) {
        await Amplify.Auth.signOut();
        return 'Problem logging in. Please try again.';
      }

      return '${e.message} - ${e.recoverySuggestion}';
    }
  }

  //password recover
  Future<String?> _onRecoverPassword(BuildContext context, String email) async {
    try {
      //provide the email in order to change the password
      final res = await Amplify.Auth.resetPassword(username: email);

      //if email is confirmed
      if (res.nextStep.updateStep == 'CONFIRM_RESET_PASSWORD_WITH_CODE') {
        Navigator.of(context).pushReplacementNamed(
          '/confirm-reset',
          arguments: LoginData(name: email, password: ''),
        );
      }
    } on AuthException catch (e) {
      return '${e.message} - ${e.recoverySuggestion}';
    }
  }

  Future<String?> _onSignup(SignupData data) async {
    try {
      //optional data
      final userAttributes = <CognitoUserAttributeKey, String>{
        CognitoUserAttributeKey.email: data.name != null ? data.name.toString() : 'example@mail.com' ,

      };
      //signup
      await Amplify.Auth.signUp(
        username: data.name != null ? data.name.toString() : 'example@mail.com',
        password: data.password != null ? data.password.toString() : '12345678',
        options: CognitoSignUpOptions(userAttributes: userAttributes),
      );

      _data = LoginData(name : data.name != null ? data.name.toString() : 'example@mail.com', password: data.password != null ? data.password.toString() : '12345678');
    } on AuthException catch (e) {
      debugPrint('${e.message} - ${e.recoverySuggestion}');
      return '${e.message} - ${e.recoverySuggestion}';
    }
  }

  @override
  Widget build(BuildContext context) {
    //login widget
    return FlutterLogin(
      title: 'Welcome',
      onLogin: _onLogin,
      onRecoverPassword: (String email) => _onRecoverPassword(context, email),
      onSignup: _onSignup,
      theme: LoginTheme(
        primaryColor: Theme.of(context).primaryColor,
      ),
      // navigate after signing in or signing up
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacementNamed(
          _isSignedIn ? '/dashboard' : '/confirm',
          arguments: _data,
        );
      },
    );
  }
}