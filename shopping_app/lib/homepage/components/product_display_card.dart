import 'package:flutter/material.dart';
import 'package:shopping_app/models/Product_models.dart';

import '../../constants.dart';

class ProductDisplayCard extends StatelessWidget {
  const ProductDisplayCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defaultPadding),
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Image
            Container(
              padding: const EdgeInsets.all(defaultPadding),
              height: 150,
              child: Image.asset(product.imageLink!),
            ),

            // Name
            Text(
              product.name!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: defaultPadding / 2),

            // Weight
            Text(product.weight!),
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
            Text(product.price!),
            const SizedBox(height: defaultPadding / 2),
          ],
        ),
      ),
    );
  }
}