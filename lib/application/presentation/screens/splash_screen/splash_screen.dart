import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/routes/routes.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    sizeFinder(context);
    Timer(const Duration(seconds: 1), () {
      context.read<AuthBloc>().add(const AuthEvent.log());
    });
    return Scaffold(
      backgroundColor: kBlack,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.isLoggedIn) {
            Navigator.popAndPushNamed(context, Routes.bottomBar);
          } else {
            Navigator.popAndPushNamed(context, Routes.signInPage);
          }
        },
        child: Center(
          child: Text(
            'Jersey Hub',
            style: kronOne(color: kWhite, fontSize: 0.10),
          ),
        ),
      ),
    );
  }
}
