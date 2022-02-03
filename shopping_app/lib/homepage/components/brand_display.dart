import 'package:flutter/material.dart';

import '../../constants.dart';
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
        const HeadingWidget(text: "Brand Name"),
        const SizedBox(height: defaultPadding),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: StaticData.brands.length,
          itemBuilder: (BuildContext context, int index) {
            return GridViewCard(text: StaticData.brands[index]);
          },
        )
      ],
    );
  }
}

class GridViewCard extends StatelessWidget {
  const GridViewCard({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: secondaryColor,
        width: 30,
        height: 30,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
