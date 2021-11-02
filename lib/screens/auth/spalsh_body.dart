// import 'dart:html';

import 'package:book_app/components/default_button.dart';
import 'package:book_app/components/splash_content.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/screens/auth/sign_in_screen.dart';
import 'package:book_app/size_config.dart';
// import 'package:book_app/constants.dart';
// import 'package:book_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      'text': 'Welcome to ShopLine, Let\s shop!',
      'image': 'assets/images/splash_1.png'
    },
    {
      'text': 'We help people connect with store \naround the World',
      'image': 'assets/images/splash_2.png'
    },
    {
      'text': 'We show the easy way to shop.  \nJust stay at homw with us',
      'image': 'assets/images/splash_3.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: SizedBox(
              width: double.infinity,
              child: PageView.builder(
                onPageChanged: (value) {
                  currentPage = value;
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]['image'],
                  text: splashData[index]['text'],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(20),
              ),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  DefaultButton(
                    text: 'Continue',
                    press: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  ),
                  Spacer()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(left: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xffd8d8d8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
