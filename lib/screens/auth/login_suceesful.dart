import 'package:book_app/screens/auth/login_suceesfull_form.dart';
// import 'package:book_app/screens/spalsh_body.dart';
import 'package:flutter/material.dart';

class LoginScreenSucessful extends StatelessWidget {
  const LoginScreenSucessful({Key key}) : super(key: key);
  static String routeName = '/Login Sucess';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          'Login Success',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: form(key),
    );
  }
}
