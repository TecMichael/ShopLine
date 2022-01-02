import 'package:book_app/models/Cart.dart';
import 'package:book_app/size_config.dart';
import 'package:flutter/material.dart';

class CartBody extends StatelessWidget {
  const CartBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xfff5f6f9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                demoCarts[0].product.images[0],
              ),
            ),
          ),
        )
      ],
    );
  }
}
