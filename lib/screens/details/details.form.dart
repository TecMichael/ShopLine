import 'package:book_app/component/components/product_images.dart';
import 'package:book_app/models/product.dart';
import 'package:book_app/size_config.dart';
import 'package:flutter/material.dart';

class DetailsForm extends StatelessWidget {
  const DetailsForm({Key key, this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key key,
    this.color,
    this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: getProportionateScreenWidth(20),
      ),
      padding: EdgeInsets.only(
        top: getProportionateScreenWidth(20),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}
