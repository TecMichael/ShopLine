import 'package:book_app/body/home_form.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/routs.dart';
import 'package:book_app/components/splash_screen.dart';
import 'package:book_app/theme.dart';
import 'package:flutter/material.dart';

// import 'dart:js';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: HomeForm(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

