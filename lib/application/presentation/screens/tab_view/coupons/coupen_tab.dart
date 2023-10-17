import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/widgets/custom_text_field.dart';

class CouponsTab extends StatelessWidget {
  const CouponsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Make a Coupon'),
        SizedBox(
          height: sWidth * 0.60,
          width: sWidth,
          child: Card(
              color: kGrey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Coupen Code'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextFormField(
                          textCapitalization: TextCapitalization.characters,
                          textInputType: TextInputType.emailAddress,
                          color: kWhite,
                          hintText: 'COUPON CODE',
                          controller: TextEditingController(),
                          width: sWidth * 0.50,
                        ),
                        const Text(
                          'Make Valid',
                          style: TextStyle(color: kGreen),
                        ),
                        kWidth10
                      ],
                    ),
                    kHeight10,
                    const Text('Discount Persentage'),
                    CustomTextFormField(
                      color: kWhite,
                      hintText: 'amount',
                      controller: TextEditingController(),
                      width: sWidth * 0.50,
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.add),
                            label: const Text('Add Coupen')))
                  ],
                ),
              )),
        ),
        const Divider(),
        const Text('Avaliable Coupens'),
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => SizedBox(
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
                              'Coupen Name',
                              style: kronOne(),
                            ),
                            // kHeight,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '200 rs Discound',
                                  style: TextStyle(color: kGreen),
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
                  )),
        )
      ],
    );
  }
}
