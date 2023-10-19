import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/coupon/coupon_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/coupons/widgets/coupon_adding_tile.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/coupons/widgets/coupon_list_view.dart';

class CouponsTab extends StatelessWidget {
  const CouponsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Make a Coupon'),
        CouponAddingTile(),
        Divider(),
        Text('Avaliable Coupens'),
        CouponListView()
      ],
    );
  }
}