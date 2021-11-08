import 'package:book_app/component/components/categories.dart';
import 'package:book_app/component/components/discount_banner.dart';
import 'package:book_app/component/components/popular_product.dart';
import 'package:book_app/component/components/product.card.dart';
import 'package:book_app/component/special_offers_card.dart';
import 'package:book_app/models/product.dart';

import 'package:book_app/size_config.dart';
import 'package:flutter/material.dart';

import 'home_header.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
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
            PopularProduct()
          ],
        ),
      ),
    );
  }
}

