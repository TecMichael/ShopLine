import 'package:book_app/component/components/discount_banner.dart';
import 'package:book_app/component/components/search_field.dart';
// import 'package:book_app/constants.dart';
import 'package:book_app/size_config.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import 'home_header.dart';
// import '../component/components/icon_btn.dart';/

class HomeForm extends StatelessWidget {
  const HomeForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          HomeHeader(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          DiscountBanner(),
        ],
      ),
    );
  }
}

