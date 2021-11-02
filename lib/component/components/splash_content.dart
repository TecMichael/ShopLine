import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

// import '../constants.dart';
// import '../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          'ShopLine',
          style: TextStyle(
              fontSize: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(235),
        )
      ],
    );
  }
}
