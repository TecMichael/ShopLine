import 'package:book_app/component/components/categories.dart';
import 'package:book_app/component/components/discount_banner.dart';
import 'package:book_app/component/special_offers_card.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/models/product.dart';
// import 'package:book_app/component/components/search_field.dart';
// import 'package:book_app/constants.dart';
import 'package:book_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          Categories(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          SpecialOffersCard(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          SectionTitle(
            text: 'Popular Product',
            press: () {},
          ),
          Column(
            children: [
              SizedBox(
                width: getProportionateScreenWidth(140),
                child: AspectRatio(
                  aspectRatio: 1.02,
                  child: Container(
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset(demoProducts[0].images[0]),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
