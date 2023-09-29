import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/routes/routes.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    sizeFinder(context);
    Timer(const Duration(seconds: 1), () {
      Navigator.popAndPushNamed(context, Routes.signInPage);
      // Navigator.popAndPushNamed(context, Routes.testScreen);
    });
    return Scaffold(
      backgroundColor: kBlack,
      body: Center(
        child: Text(
          'Jersey Hub',
          style: kronOne(color: kWhite, fontSize: 0.10),
        ),
      ),
    );
  }
}
