import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub_admin/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/validator_functions/validartors.dart';

import '../../../utils/colors.dart';
import '../../../utils/constant.dart';

class CoustomTextField extends StatelessWidget {
  const CoustomTextField(
      {super.key,
      this.isPassword = false,
      required this.label,
      required this.controller,
      this.keyboardType = TextInputType.text});

  final String label;
  final TextInputType keyboardType;
  final bool isPassword;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: kronOne(color: kWhite, fontSize: 0.03),
        ),
        Container(
          height: 40,
          decoration: const BoxDecoration(
              color: kWhite, borderRadius: BorderRadius.all(kRadius5)),
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return TextFormField(
                controller: controller,
                validator: (value) {
                  if (isPassword && value!.isEmpty) {
                    return 'enter password';
                  } else if (isPassword && value!.length < 8) {
                    return 'password must contains 8 charactors';
                  } else if (!isPassword || value!.isEmpty) {
                    return isValidEmail(value!) ? null : 'enter valid email';
                  }
                  return null;
                },
                obscureText:isPassword? state.obscure:false,
                style: kronOne(),
                keyboardType: keyboardType,
                decoration: InputDecoration(
                  focusedErrorBorder: InputBorder.none,
                  suffix: isPassword
                      ? IconButton(
                          icon: Icon(
                            state.obscure ? Icons.remove_red_eye : Iconsax.eye,
                            color: kBlack,
                          ),
                          onPressed: () {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.obscure());
                          },
                        )
                      : null,
                  hintStyle: kronOne(color: kBlack, fontSize: 0.03),
                  border: const OutlineInputBorder(),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  fillColor: kWhite,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
