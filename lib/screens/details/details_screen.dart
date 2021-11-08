import 'package:book_app/component/components/rounded_icon_btn.dart';
import 'package:book_app/models/product.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  static String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //By deafualt our background color is white
      backgroundColor: Color(0xfff5f6f9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: RoundedIconBtn(
              iconData: Icons.arrow_back_ios,
              press: () => Navigator.pop(context)),
        ),
      ),
    );
  }
}

class CustomAppBar extends PreferredSize {
  @override
  Size get PreferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return Row();
  }
}

// we need to pass our product to our detials screen
// And we use name routes so we need to create an argument class

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments(this.product);
}
