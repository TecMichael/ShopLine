import 'package:book_app/models/Cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cart_item_card.dart';

class CartBody extends StatelessWidget {
  const CartBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dismissible(
          key: Key(demoCarts[0].product.id.toString()),
          background: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0xffffe6e6),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              children: [
                Spacer(),
                SvgPicture.asset('assets/icons/Trash.svg')
              ],
            ),
          ),
          child: CartItemCard(cart: demoCarts[0]),
        ),
      ],
    );
  }
}
