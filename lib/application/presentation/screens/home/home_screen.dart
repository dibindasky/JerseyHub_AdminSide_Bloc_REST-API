import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/get_inventory/get_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/screens/home/widgets/inventory_list_view.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

import 'widgets/custom_search_field.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      _scrollCallBack();
    });
    super.initState();
  }

  _scrollCallBack() {
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        !context.read<GetInventoryBloc>().isScrollLoading) {
      context.read<GetInventoryBloc>().add(const GetInventoryEvent.nextPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<GetInventoryBloc>()
          .add(const GetInventoryEvent.getInventoryCall());
    });
    return SingleChildScrollView(
      controller: scrollController,
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
