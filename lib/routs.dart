




// import 'package:book_app/body/home_screen.dart';
import 'package:book_app/screens/auth/complete_profile.dart';
import 'package:book_app/screens/auth/forgot_password.dart';
import 'package:book_app/screens/auth/login_suceesful.dart';
import 'package:book_app/screens/auth/otp_screen.dart';
import 'package:book_app/screens/auth/sign_in_screen.dart';
import 'package:book_app/screens/auth/sign_up_screen.dart';
import 'package:book_app/screens/body/home_screen.dart';
// import 'package:book_app/components/splash_screen.dart';
import 'package:flutter/material.dart';

import 'component/components/splash_screen.dart';

final Map<String,WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName:(context) => SignInScreen(),
  ForgotPassword.routeName:(context)=> ForgotPassword(),
  LoginScreenSucessful.routeName:(context)=> LoginScreenSucessful(),
  SignUpScreen.routeName :(context)=> SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen()
};
