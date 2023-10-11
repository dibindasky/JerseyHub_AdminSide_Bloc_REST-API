import 'package:flutter/material.dart';

void showSnack(
    {required BuildContext context, required String message, Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      dismissDirection: DismissDirection.horizontal,
      content: Text(message),
      duration: const Duration(milliseconds: 1500),
      backgroundColor: color,
    ),
  );
}
