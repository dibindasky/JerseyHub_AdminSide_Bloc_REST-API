import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/get_inventory/get_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/screens/home/widgets/inventory_tile.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub_admin/application/presentation/utils/snack_show/snack_bar.dart';

class InventoryListView extends StatelessWidget {
  const InventoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetInventoryBloc, GetInventoryState>(
      listener: (context, state) {
        if (state.hasError) {
          showSnack(
              context: context,
              message: 'something went wrong, can\'t connect to server',
              color: kRed);
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingAnimation(width: 0.30);
        } else if (state.hasError) {
          return const Center(
            child: Text('cant connect to server'),
          );
        } else if (state.inventories != null &&
            state.inventories!.isNotEmpty) {
          return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1 / 1.6,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2),
              itemCount: state.loadMore
                  ? state.inventories!.length + 1
                  : state.inventories!.length,
              itemBuilder: (context, index) =>
                  state.inventories!.length == index && state.loadMore
                      ? const LoadingAnimation(width: 0.10)
                      : InventoryTile(
                          inventory: state.inventories![index]));
        } else {
          return const Center(child: Text('no data avaliable '));
        }
      },
    );
  }
}
