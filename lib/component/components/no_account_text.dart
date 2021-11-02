// import 'package:book_app/screens/auth/forgot_password.dart';
// import 'package:book_app/screens/auth/sign_in_screen.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/screens/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

// import '../../constants.dart';
// import '../constants.dart';
// import '../size_config.dart';

class NoAcoountText extends StatelessWidget {
  const NoAcoountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Dont have an account?',
          style: TextStyle(
              fontSize: (double inputWidth) {
            // double screenWidth = SizeConfig.screenWidth;
            // 375 is the layout width that designer use
            // return (inputWidth / 375.0) * screenWidth;
          }(16)),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: Text(
            'Sign up',
            style: TextStyle(
                fontSize: (double inputWidth) {
                  // double screenWidth = SizeConfig.screenWidth;
                  // 375 is the layout width that designer use
                  // return (inputWidth / 375.0) * screenWidth;
                }(16),
                color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
