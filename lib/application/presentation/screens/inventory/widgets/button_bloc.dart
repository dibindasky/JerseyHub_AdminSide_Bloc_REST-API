import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/add_inventory/add_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub_admin/application/presentation/utils/snack_show/snack_bar.dart';

class InventoryElevatedButton extends StatelessWidget {
  const InventoryElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddInventoryBloc, AddInventoryState>(
      listener: (context, state) {
        if (state.hasError) {
          Navigator.pop(context);
          showSnack(
              context: context,
              color: Colors.red,
              message: 'cannot add Inventory, Something went wrong');
        } else if (state.isLoading) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: LoadingAnimation(
                width: 0.70,
              ),
            ),
          );
        } else if (state.addInventoryResponseModel != null) {
          Navigator.pop(context);
          showSnack(
              context: context,
              color: kGreen,
              message: 'inventory added sussefully');
        }
      },
      builder: (context, state) {
        return Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton.icon(
              onPressed: () {
                if (context
                    .read<AddInventoryBloc>()
                    .inventoryKey
                    .currentState!
                    .validate()) {
                  Map<String, dynamic> formMap = {};
                  if (state.image != null) {
                    formMap['image'] = state.image!.multipartFile;
                  } else {
                    showSnack(
                        context: context,
                        color: Colors.red,
                        message: 'image is required to perform action');
                    return;
                  }
                  if (state.size == null) {
                    showSnack(
                        context: context,
                        color: Colors.red,
                        message: 'add size and try again');
                    return;
                  } else {
                    formMap['size'] = state.size;
                  }
                  if (state.catogoryId == null) {
                    showSnack(
                        context: context,
                        color: Colors.red,
                        message: 'choose catogery and try again');
                    return;
                  } else {
                    formMap['category_id'] = state.catogoryId;
                  }
                  formMap['product_name'] = context
                      .read<AddInventoryBloc>()
                      .productNameController
                      .text
                      .trim();
                  formMap['price'] = context
                      .read<AddInventoryBloc>()
                      .productPriceController
                      .text
                      .trim();
                  formMap['stock'] = context
                      .read<AddInventoryBloc>()
                      .productQuantityController
                      .text
                      .trim();
                  FormData formData = FormData.fromMap(formMap);
                  context
                      .read<AddInventoryBloc>()
                      .add(AddInventoryEvent.addJersey(formData: formData));
                }
              },
              icon: const Icon(Iconsax.add),
              label: const Text('Add jersey'),
              style: elevatedButtonStyle,
            ));
      },
    );
  }
}
