import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/colors.dart';
import '../../../utils/constant.dart';

class OTPNumberTIle extends StatelessWidget {
  const OTPNumberTIle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: kWhite)),
      height: sWidth * 0.15,
      width: sWidth * 0.10,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: kronOne(color: kWhite, fontSize: 0.10),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
