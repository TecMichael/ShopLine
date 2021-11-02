import 'package:book_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SociallCard extends StatelessWidget {
  const SociallCard({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(12),
        ),
        padding: EdgeInsets.all(
          (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(12),
        ),
        height: getProportionateScreenHeight(40),
        width: (double inputWidth) {
  // double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  // return (inputWidth / 375.0) * screenWidth;
}(40),
        decoration:
            BoxDecoration(color: Color(0xfff5f6f9), shape: BoxShape.circle),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
