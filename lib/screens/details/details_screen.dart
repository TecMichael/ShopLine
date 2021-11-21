import 'package:book_app/component/custom_app_bar.dart';
import 'package:book_app/models/product.dart';
import 'package:book_app/screens/details/details.form.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  static String routeName = '/details';

  @override
  Widget build(BuildContext context) {
      final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      //By deafualt our background color is white
      backgroundColor: Color(0xfff5f6f9),
      appBar: CustomAppBar(arguments.product.rating),
      body: DetailsForm(product: arguments.product,),
    );
  }
}


// we need to pass our product to our detials screen
// And we use name routes so we need to create an argument class

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments(this.product);
}
