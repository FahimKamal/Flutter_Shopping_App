import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

import 'components/Hottest_deals.dart';
import 'components/brand_display.dart';
import 'components/image_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: ListView(
        children: [
          const ComplicatedImageDemo(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  BrandDisplay(),
                  SizedBox(height: defaultPadding),
                  HottestDeals(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
