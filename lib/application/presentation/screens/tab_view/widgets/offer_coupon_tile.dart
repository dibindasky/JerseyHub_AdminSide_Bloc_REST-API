import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

class OfferCouponCard extends StatelessWidget {
  const OfferCouponCard({
    super.key, required this.name, required this.amount,
  });

  final String name;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sWidth,
      height: sWidth * 0.229,
      child: Card(
        color: kGrey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: kronOne(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$amount % Discound',
                    style: const TextStyle(color: kGreen),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Make Invalid',
                        style: TextStyle(color: kRed),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
