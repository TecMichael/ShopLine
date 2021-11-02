import 'package:book_app/screens/auth/spalsh_body.dart';
import 'package:book_app/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);
  static String routeName = '/spllash';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
