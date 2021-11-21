import 'package:book_app/component/components/color_dots.dart';
import 'package:book_app/component/components/default_button.dart';
import 'package:book_app/component/components/product_images.dart';
import 'package:book_app/component/components/production_description.dart';
import 'package:book_app/component/components/rounded_icon_btn.dart';
import 'package:book_app/component/components/top_rounded_container.dart';
import 'package:book_app/models/product.dart';
import 'package:book_app/size_config.dart';
import 'package:flutter/material.dart';

class DetailsForm extends StatelessWidget {
  const DetailsForm({Key key, this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductionDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xfff6f7f9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          top: getProportionateScreenWidth(15),
                          bottom: getProportionateScreenWidth(40),
                        ),
                        child: TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.screenWidth * 0.11,
                                right: SizeConfig.screenWidth * 0.11,
                                bottom: getProportionateScreenWidth(40),
                                top: getProportionateScreenWidth(15)),
                            child: DefaultButton(
                              text: 'Add to Cart',
                              press: () {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIconBtn(
            iconData: Icons.remove,
            press: () {},
          ),
          SizedBox(
            width: getProportionateScreenWidth(15),
          ),
          RoundedIconBtn(
            iconData: Icons.add,
            press: () {},
          )
        ],
      ),
    );
  }
}
