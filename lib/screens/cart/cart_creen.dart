import 'package:book_app/models/Cart.dart';
import 'package:book_app/screens/auth/forgot_form.dart';
import 'package:book_app/screens/auth/spalsh_body.dart';
import 'package:book_app/screens/cart/components/body.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

  static String routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CartBody()
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            'Your Cart',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '${demoCarts.length}items',
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}
