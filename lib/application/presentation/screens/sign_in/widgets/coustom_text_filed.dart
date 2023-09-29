import 'package:flutter/material.dart';

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
          child: TextField(
            controller: controller,
            obscureText: isPassword,
            style: kronOne(),
            keyboardType: keyboardType,
            decoration: InputDecoration(
              suffix: isPassword
                  ? IconButton(
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: kBlack,
                      ),
                      onPressed: () {},
                    )
                  : null,
              hintStyle: kronOne(color: kBlack, fontSize: 0.03),
              border: const OutlineInputBorder(),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              fillColor: kWhite,
            ),
          ),
        ),
      ],
    );
  }
}
