import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/routes/routes.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

import '../../utils/loading_indicator/loading_indicator.dart';
import '../../widgets/coustom_text_filed.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              Text(
                'JerseyHub',
                style: kronOne(color: kWhite, fontSize: 0.07),
              ),
              const SizedBox(height: 100),
              CoustomTextField(
                label: 'email',
                keyboardType: TextInputType.emailAddress,
              ),
              kHeight20,
              CoustomTextField(
                label: 'password',
                isPassword: true,
              ),
              kHeight20,
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: elevatedButtonStyle,
                  child: const Text('Sign-in'),
                ),
              ),
             
           
              
              
              const LoadingAnimation(width : 0.30),
            ],
          ),
        ),
      ),
    );
  }
}