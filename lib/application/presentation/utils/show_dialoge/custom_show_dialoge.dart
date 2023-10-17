import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

Future<dynamic> customShowDialoge(
    {required BuildContext context, required Function onPress}) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: kGreen, foregroundColor: kWhite),
                child: const Text('NO'),
              ),
              kWidth20,
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  onPress();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: kRed, foregroundColor: kWhite),
                child: const Text('YES'),
              )
            ],
            title: const Text('are you sure?'),
          ));
}
