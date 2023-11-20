import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/coupons/widgets/coupon_adding_tile.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/coupons/widgets/coupon_list_view.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

class CouponsTab extends StatelessWidget {
  const CouponsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Make a Coupon'),
        const CouponAddingTile(),
        const Divider(),
        const Text('Avaliable Coupens'),
        const CouponListView(),
        SizedBox(
          height: sWidth * 0.20,
        )
      ],
    );
  }
}
