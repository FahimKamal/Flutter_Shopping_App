import 'package:flutter/material.dart';

void showMessage(
    {required BuildContext context,
    String message = 'Function not implemented.'}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 3),
      content: Text(message),
    ),
  );
}
