import 'package:flutter/material.dart';
import 'package:shopping_app/functions.dart';
import 'package:shopping_app/models/Product_models.dart';
import 'package:shopping_app/pages/details_page/details_page.dart';

import '../../../constants.dart';

class ProductDisplayCard extends StatelessWidget {
  const ProductDisplayCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: SizedBox(
        width: 160,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (BuildContext context) => DetailPage(product: product)));
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultPadding),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Image
              Container(
                padding: const EdgeInsets.all(defaultPadding),
                height: 150,
                width: 150,
                child: Image.asset(product.imageLink!),
              ),

              // Name
              Text(
                product.name!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: primaryFontColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: defaultPadding / 2),

              // Weight
              Text(product.weight!, style: TextStyle(color: primaryFontColor)),
              const SizedBox(height: defaultPadding / 2),
              Container(
                decoration: BoxDecoration(
                    color: thirdColor,
                    borderRadius: BorderRadius.circular(defaultPadding / 2)),
                padding: const EdgeInsets.all(5),
                child: const Text("10%"),
              ),
              const SizedBox(height: defaultPadding / 2),

              // Price
              Text(product.price!, style: TextStyle(color: primaryFontColor)),
              const SizedBox(height: defaultPadding / 2),
            ],
          ),
        ),
      ),
    );
  }
}
