import 'package:book_app/constants.dart';
// import 'package:book_app/screens/sign_form.dart';
import 'package:book_app/screens/auth/sign_up_form.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  static String routeName = '/SignUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(color: kTextColor),
        ),
      ),
      body: SingleChildScrollView(
        child: SignUp(),
      ),
    );
  }
}
