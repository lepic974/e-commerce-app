import 'package:flutter/material.dart';
import 'package:food_reunion_app/constants.dart';
import 'package:food_reunion_app/models/Cart.dart';
import 'package:food_reunion_app/size_config.dart';
import 'package:food_reunion_app/src/commons.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key key,
    @required this.cart,
  }) : super(key: key);

  final Cart cart;

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
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(fontSize: 16, color: kBlack),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "\$${cart.product.price}",
                style: TextStyle(color: kPrimaryColor),
                children: [
                  TextSpan(
                    text: " x${cart.numOfItem}",
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}