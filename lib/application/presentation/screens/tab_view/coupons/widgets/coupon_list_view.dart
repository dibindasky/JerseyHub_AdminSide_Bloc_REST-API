import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/coupon/coupon_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/widgets/offer_coupon_tile.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/snack_show/snack_bar.dart';

class CouponListView extends StatelessWidget {
  const CouponListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocConsumer<CouponBloc, CouponState>(
        listener: (context, state) {
          if (state.hasError || state.isDone) {
            showSnack(
                context: context,
                message: state.message!,
                color: state.hasError ? kRed : kGreen);
          }
        },
        buildWhen: (previous, current) =>
            previous.getCouponResponseModel != current.getCouponResponseModel,
        builder: (context, state) {
          if (state.getCouponResponseModel == null) {
            const Center(
              child: Text('nothing to show'),
            );
          }
          final couponList = state.getCouponResponseModel!.data;
          return ListView.builder(
              itemCount: couponList!.length,
              itemBuilder: (context, index) => OfferCouponCard(
                    amount: couponList[index].discountRate!,
                    name: couponList[index].coupon!,
                  ));
        },
      ),
    );
  }
}

