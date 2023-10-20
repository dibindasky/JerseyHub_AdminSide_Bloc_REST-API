import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/get_inventory/get_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/screens/home/widgets/inventory_list_view.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

import 'widgets/custom_search_field.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CoustomSearchField(),
          kHeight10,
          const InventoryListView(),
          SizedBox(height: sWidth * 0.30)
        ],
      ),
    );
  }
}
