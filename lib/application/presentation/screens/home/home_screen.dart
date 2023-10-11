import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/screens/home/widgets/inventory_tile.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

import 'widgets/custom_search_field.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            children: [
              CoustomSearchField(),
              kHeight10,
            ],
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1 / 1.5,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
            crossAxisCount: 2,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const InventoryTile();
            },
            childCount: 11,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: sWidth * 0.30),
        )
      ],
    );
  }
}
