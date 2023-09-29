import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/routes/routes.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/utils/loading_indicator/loading_indicator.dart';

import 'widgets/otp_number_tile.dart';

class ScreenOTPVerification extends StatelessWidget {
  const ScreenOTPVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlack,
        foregroundColor: kWhite,
      ),
      backgroundColor: kBlack,
      body: SafeArea(
        child: Row(
          children: [
            SizedBox(
              width: sWidth * 0.10,
            ),
            SizedBox(
              width: sWidth * 0.80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Verify otp',
                    style: kronOne(color: kWhite, fontSize: 0.06),
                  ),
                  kHeight10,
                  Text(
                    'phone number provided',
                    style:
                        kronOne(color: kWhite.withOpacity(0.8), fontSize: 0.03),
                  ),
                  Text(
                    '7025214086',
                    style: kronOne(color: kBlue, fontSize: 0.03),
                  ),
                  kHeight50,
                  SizedBox(
                    width: sWidth * 0.80,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OTPNumberTIle(),
                          OTPNumberTIle(),
                          OTPNumberTIle(),
                          OTPNumberTIle(),
                          OTPNumberTIle(),
                          OTPNumberTIle(),
                        ]),
                  ),
                  kHeight10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Resend',
                          style: kronOne(color: kWhite),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, Routes.bottomBar, (route) => false);
                        },
                        child: Text(
                          'Submit',
                          style: kronOne(color: kBlue),
                        ),
                      )
                    ],
                  ),
                  const LoadingAnimation(width: 0.30),
                  kHeight50
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
