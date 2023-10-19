import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/coupon/coupon_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/offer/offer_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/domain/models/coupons/coupon_activate_qurrey/coupon_activate_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/coupons/delete_coupen_qurrey/delete_coupen_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/coupons/get_coupons_response_model/coupon.dart';
import 'package:jerseyhub_admin/domain/models/offer/delete_offer_qurrey/delete_offer_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/offer/get_offer_response_model/offer.dart';

class OfferCouponCard extends StatelessWidget {
  const OfferCouponCard({
    this.coupon,
    this.offer,
    super.key,
  });

  final Coupon? coupon;
  final Offer? offer;

  @override
  Widget build(BuildContext context) {
    late String name;
    late int amount;
    if (coupon != null) {
      name = coupon!.coupon!;
      amount = coupon!.discountRate!;
    } else {
      name = offer!.categoryId!.toString();
      amount = offer!.discountRate!;
    }
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
                  (coupon != null && coupon!.valid!) ||
                          (offer != null && offer!.valid!)
                      ? TextButton(
                          onPressed: () {
                            coupon != null
                                ? context.read<CouponBloc>().add(
                                    CouponEvent.deleteCoupon(
                                        deleteCoupenQurrey: DeleteCoupenQurrey(
                                            couponId: coupon!.couponId)))
                                : context.read<OfferBloc>().add(
                                    OfferEvent.deleteOffer(
                                        deleteOfferQurrey: DeleteOfferQurrey(
                                            offerId: offer!.id)));
                          },
                          child: const Text(
                            'Make Invalid',
                            style: TextStyle(color: kRed),
                          ))
                      : TextButton(
                          onPressed: () {
                            coupon != null
                                ? context.read<CouponBloc>().add(
                                    CouponEvent.activateCoupon(
                                        couponActivateQurrey:
                                            CouponActivateQurrey(
                                                id: coupon!.couponId)))
                                : null;
                          },
                          child: const Text(
                            'Make Valid',
                            style: TextStyle(color: kGreen),
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
