import 'package:book_app/constants.dart';
import 'package:book_app/screens/auth/complete_form.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key key}) : super(key: key);

  static String routeName = '/complete_profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign up',
          style: TextStyle(color: kTextColor),
        ),
      ),
      body: CompleteForm(),
    );
  }
}
