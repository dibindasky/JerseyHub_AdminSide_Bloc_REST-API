import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

import '../../widgets/custom_search_field.dart';
import 'widgets/monthly_offer_board.dart';
import 'widgets/popular_catogory_row.dart';
import 'widgets/popular_gridview.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CoustomSearchField(),
            const PopularCatogories(),
            kHeight20,
            const MonthlyOfferBoard(),
            kHeight10,
            Row(
              children: [
                kWidth10,
                const Text(
                  'Popular Products',
                  style: headStyle,
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Text('See All'),
                  label: const Icon(Icons.keyboard_arrow_right_sharp),
                ),
              ],
            ),
            SizedBox(height: sWidth * 1.50,
              child:const PopularProductGrid()),
          ],
        ),
      ),
    );
  }
}

