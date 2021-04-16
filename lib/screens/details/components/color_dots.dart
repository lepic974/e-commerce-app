import 'package:flutter/material.dart';
import 'package:food_reunion_app/components/icon_rounded_btn.dart';
import 'package:food_reunion_app/constants.dart';
import 'package:food_reunion_app/models/Product.dart';
import 'package:food_reunion_app/size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    // For demo we use fixed value
    int selectedColor = 3;

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIconBtn(
            iconData: Icons.remove,
            press: () {},
          ),
          SizedBox(width: getProportionateScreenWidth(15)),
          RoundedIconBtn(
            iconData: Icons.add,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    this.color,
    this.isSelected,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape: BoxShape.circle,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
