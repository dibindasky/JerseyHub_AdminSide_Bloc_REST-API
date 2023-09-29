import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';

import '../../../utils/constant.dart';

class CatogorySelectorIcon extends StatelessWidget {
  const CatogorySelectorIcon({
    super.key,
    required this.image,
    required this.sport,
  });
  final String image;
  final String sport;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: sWidth * 0.06,
          backgroundImage: AssetImage(image),
        ),
        Text(sport,style: TextStyle(color: kBlack.withOpacity(0.6)),)
      ],
    );
  }
}
