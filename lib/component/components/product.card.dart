import 'package:book_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 120,
    this.aspectRetion = 1.02,
    this.product,
    this.press,
  }) : super(key: key);

  final double width, aspectRetion;
  final Product product;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRetion,
                child: Container(
                  padding: EdgeInsets.all(
                    getProportionateScreenWidth(20),
                  ),
                  decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(product.images[0]),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(
                        getProportionateScreenWidth(5),
                      ),
                      width: getProportionateScreenWidth(20),
                      height: getProportionateScreenWidth(20),
                      decoration: BoxDecoration(
                          color: product.isFavourite
                              ? kPrimaryColor.withOpacity(0.15)
                              : kSecondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                        color: product.isFavourite
                            ? Color(0xffff4848)
                            : Color(0xffdbdee4),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
