import 'package:flutter/material.dart';
import 'package:food_reunion_app/models/Product.dart';
import 'package:food_reunion_app/screens/details/components/body.dart';
import 'package:food_reunion_app/screens/details/components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      // By default our background color is white
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments.product.rating),
      body: Body(product: arguments.product),
    );
  }
}

// But we also need to pass our product to our details screen
// And we use name route so we need to create a argument class

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
