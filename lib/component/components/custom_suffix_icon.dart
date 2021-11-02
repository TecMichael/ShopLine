import 'package:book_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key key,
    this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0, getProportionateScreenWidth(20), getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
//         (double inputWidth) {
//   // double screenWidth = SizeConfig.screenWidth;
//   // 375 is the layout width that designer use
//   // return (inputWidth / 375.0) * screenWidth;
// }(20),
//         (double inputWidth) {
//   // double screenWidth = SizeConfig.screenWidth;
//   // 375 is the layout width that designer use
//   // return (inputWidth / 375.0) * screenWidth;
// }(20),
//         (double inputWidth) {
//   // double screenWidth = SizeConfig.screenWidth;
//   // 375 is the layout width that designer use
//   // return (inputWidth / 375.0) * screenWidth;
// }(20),
      ),
      child: SvgPicture.asset(svgIcon),
    );
  }
}
