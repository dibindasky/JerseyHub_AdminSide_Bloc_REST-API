import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/coupon/coupon_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/widgets/custom_text_field.dart';
import 'package:jerseyhub_admin/domain/models/coupons/add_coupon_model/add_coupon_model.dart';

class CouponAddingTile extends StatelessWidget {
  const CouponAddingTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    controller: context.read<CouponBloc>().couponNameController,
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
                hintText: 'persentage',
                controller: context.read<CouponBloc>().couponAmountController,
                width: sWidth * 0.50,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton.icon(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    context.read<CouponBloc>().add(CouponEvent.addCoupon(
                        addCouponModel: AddCouponModel(
                            coupon: context
                                .read<CouponBloc>()
                                .couponNameController
                                .text
                                .trim(),
                            discountRate: int.parse(context
                                .read<CouponBloc>()
                                .couponAmountController
                                .text
                                .trim()))));
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Add Coupen'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
