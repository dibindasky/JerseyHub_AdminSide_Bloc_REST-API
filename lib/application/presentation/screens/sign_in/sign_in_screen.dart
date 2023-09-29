import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/routes/routes.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/utils/snack_show/snack_bar.dart';
import 'package:jerseyhub_admin/domain/models/login_models/login_model/login_model.dart';

import '../../utils/loading_indicator/loading_indicator.dart';
import 'widgets/coustom_text_filed.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
            height: sHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'JerseyHub',
                  style: kronOne(color: kWhite, fontSize: 0.07),
                ),
                const SizedBox(height: 100),
                CoustomTextField(
                  controller: context.read<AuthBloc>().emailController,
                  label: 'email',
                  keyboardType: TextInputType.emailAddress,
                ),
                kHeight20,
                CoustomTextField(
                  controller: context.read<AuthBloc>().passwordController,
                  label: 'password',
                  isPassword: true,
                ),
                kHeight20,
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state.hasError) {
                      showSnack(context: context, message: state.message!);
                    }
                    if (state.loginResponse != null) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, Routes.bottomBar, (route) => false);
                      showSnack(
                          context: context,
                          message: state.message!,
                          color: kGreen);
                    }
                  },
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const LoadingAnimation(width: 0.30);
                    } else {
                      return Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                            context.read<AuthBloc>().add(
                                  AuthEvent.signIn(
                                    loginModel: LoginModel(
                                      password: context
                                          .read<AuthBloc>()
                                          .passwordController
                                          .text
                                          .trim(),
                                      email: context
                                          .read<AuthBloc>()
                                          .emailController
                                          .text
                                          .trim(),
                                    ),
                                  ),
                                );
                          },
                          style: elevatedButtonStyle,
                          child: const Text('Sign-in'),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}