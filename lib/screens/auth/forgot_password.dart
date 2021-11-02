import 'package:book_app/constants.dart';
import 'package:book_app/screens/auth/forgot_form.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  static String routeName = '/forgot_password';
  const ForgotPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot Password',
          style: TextStyle(color: kTextColor),
        ),
      ),
      body: body(),
    );
  }
}
