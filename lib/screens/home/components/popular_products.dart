import 'package:flutter/material.dart';
import 'package:food_reunion_app/models/Product.dart';
import 'package:food_reunion_app/screens/details/details_screen.dart';
import 'package:food_reunion_app/screens/details/components/product_card.dart';
import 'package:food_reunion_app/screens/home/components/section_title.dart';
import 'package:food_reunion_app/size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            text: "Popular Product",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(
                      product: demoProducts[index],
                      press: () => Navigator.pushNamed(
                            context, 
                            DetailsScreen.routeName, 
                            arguments: ProductDetailsArguments(
                              product: demoProducts[index],),
                           //images: images, colors: colors, title: title, price: price, description: description)),
                          ),
                    );
                    return SizedBox
                      .shrink();    
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
