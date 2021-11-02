// import 'package:book_app/constants.dart';
// import 'package:book_app/components/default_button.dart';
// import 'package:book_app/constants.dart';
import 'package:book_app/components/social_card.dart';
// import 'package:book_app/constants.dart';
// import 'package:book_app/screens/forgot_password.dart';
import 'package:book_app/screens/auth/sign_form.dart';
import 'package:book_app/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'no_account_text.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import 'custom_suffix_icon.dart';
// import 'form_error.dart';

class BodyAuth extends StatelessWidget {
  const BodyAuth({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(28),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sign in with your email and password \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SociallCard(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SociallCard(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SociallCard(
                      icon: 'assets/icons/twitter.svg',
                      press: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                NoAcoountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
