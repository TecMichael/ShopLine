// import 'dart:html';

// import 'package:book_app/components/body.dart';
import 'package:book_app/components/body_auth.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key key}) : super(key: key);
  static String routeName = '/sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: TextStyle(color: Color(0xff888888), fontSize: 18),
        ),
      ),
      body: BodyAuth()
    );
  }
}

