import 'package:flutter/material.dart';
import 'package:shopping_app/functions.dart';
import 'package:shopping_app/models/brands.dart';

import '../../../constants.dart';
import 'heading_widget.dart';

class BrandDisplay extends StatelessWidget {
  const BrandDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingWidget(text: "Top Brands"),
        const SizedBox(height: defaultPadding),
        GridView.builder(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          primary: false,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: defaultPadding,
            crossAxisSpacing: defaultPadding,
            // childAspectRatio: .8
          ),
          itemCount: StaticData.topBrands.length,
          itemBuilder: (BuildContext context, int index) {
            return GridViewCard(brand: StaticData.topBrands[index]);
          },
        )
      ],
    );
  }
}

class GridViewCard extends StatelessWidget {
  const GridViewCard({
    Key? key,
    required this.brand,
  }) : super(key: key);

  final Brand brand;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showMessage(context: context);
      },
      style: ElevatedButton.styleFrom(
        primary: secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(defaultPadding),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(brand.logo!, width: 60),
          const SizedBox(height: defaultPadding / 3),
          Text(
            brand.name!,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
