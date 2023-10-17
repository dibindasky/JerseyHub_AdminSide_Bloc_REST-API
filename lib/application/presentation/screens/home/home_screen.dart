import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/get_inventory/get_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/screens/home/widgets/inventory_tile.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub_admin/application/presentation/utils/snack_show/snack_bar.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_response_qurrey/get_response_qurrey.dart';

import 'widgets/custom_search_field.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<GetInventoryBloc>().add(GetInventoryEvent.getInventoryCall(
          getResponseQurrey: GetResponseQurrey(page: 1)));
    });
    return SingleChildScrollView(
      child: Column(
        children: [
          const Column(
            children: [
              CoustomSearchField(),
              kHeight10,
            ],
          ),
          BlocConsumer<GetInventoryBloc, GetInventoryState>(
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
              } else if (state.getInventoryResponseModel != null &&
                  state.getInventoryResponseModel!.data != null &&
                  state.getInventoryResponseModel!.data!.isNotEmpty) {
                return GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1 / 1.6,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 10,
                            crossAxisCount: 2),
                    // itemCount: 10,
                    itemCount: state.getInventoryResponseModel!.data!.length,
                    itemBuilder: (context, index) => InventoryTile(
                        inventory:
                            state.getInventoryResponseModel!.data![index]));
              } else {
                return const Center(child: Text('no data avaliable '));
              }
            },
          ),
          SizedBox(height: sWidth * 0.30)
        ],
      ),
    );
  }
}
