import 'package:flutter/material.dart';

import '../../constants.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 24, color: primaryFontColor),
    );
  }
}