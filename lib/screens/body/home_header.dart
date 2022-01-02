import 'package:book_app/component/components/icon_btn.dart';
import 'package:book_app/component/components/search_field.dart';
import 'package:book_app/screens/cart/cart_creen.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
// import '../size_config.dart';
// import '../component/components/icon_btn.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
            numOfItems: 3,
          ),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            press: () {},
            numOfItems: 3,
          )
        ],
      ),
    );
  }
}
