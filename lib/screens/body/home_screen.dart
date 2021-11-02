// import 'package:book_app/body/home_form.dart';
import 'package:flutter/material.dart';

import 'home_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeForm(),
    );
  }
}
