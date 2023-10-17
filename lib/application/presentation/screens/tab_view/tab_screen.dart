import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/category/catogery_tab.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/coupons/coupen_tab.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/offers/offer_tab.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

class ScreenTabView extends StatelessWidget {
  const ScreenTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(sWidth, sHeight),
          child: TabBar(
              labelStyle: kronOne(),
              indicatorColor: kBlack,
              tabs: const [
                Tab(child: Text('Coupons')),
                Tab(
                  child: Text('Offers'),
                ),
                Tab(
                  child: Text('Category'),
                )
              ]),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: TabBarView(children: [
            CouponsTab(),
            OffersTab(),
            CatogeryTab(),
          ]),
        ),
      ),
    );
  }
}
