import 'package:book_app/constants.dart';
import 'package:book_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: SizeConfig.screenWidth * 0.6,
                  height: 50,
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Search Product',
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20),
                        vertical: getProportionateScreenHeight(9),
                      ),
                    ),
                  ),
                ),
                IconBtnWithCounter(
                  svgSrc: 'assets/icons/Cart Icon.svg',
                  press: () {},
                  numOfItems: 3,
                ),
                IconBtnWithCounter(
                  svgSrc: 'assets/icons/Bell.svg',
                  press: () {},
                  numOfItems: 3,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key key,
    this.svgSrc,
    this.numOfItems,
    this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(
              getProportionateScreenWidth(12),
            ),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenHeight(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          // if (numOfItems ! = 0)
          Positioned(
            right: 0,
            top: -3,
            child: Container(
              height: getProportionateScreenWidth(16),
              width: getProportionateScreenHeight(16),
              decoration: BoxDecoration(
                color: Color(0xffff4848),
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  '/$numOfItems',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(10),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
