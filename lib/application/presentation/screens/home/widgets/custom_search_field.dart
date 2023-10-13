import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/colors.dart';
import '../../../utils/constant.dart';

class CoustomSearchField extends StatelessWidget {
  const CoustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: const BoxDecoration(
            color: kGrey, borderRadius: BorderRadius.all(kRadius50)),
        width: sWidth * 0.90,
        height: sWidth * 0.10,
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'what are you looking for?',
            border: InputBorder.none,
            prefixIcon: Icon(Iconsax.search_normal_1),
          ),
        ));
  }
}
