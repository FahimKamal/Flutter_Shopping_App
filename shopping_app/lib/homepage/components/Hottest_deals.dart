import 'package:flutter/material.dart';
import 'package:shopping_app/homepage/components/product_display_card.dart';

import '../../constants.dart';
import 'heading_widget.dart';


class HottestDeals extends StatelessWidget {
  const HottestDeals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingWidget(text: 'Hottest Deals'),
        const SizedBox(height: defaultPadding),
        Container(
          // width: 400,
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: StaticData.demoProducts.length,
            itemBuilder: (BuildContext context, int index) {
              return ProductDisplayCard(product: StaticData.demoProducts[index]);
            },
          ),
        ),
      ],
    );
  }
}


