import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/edit_inventory/edit_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/get_inventory/get_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/utils/snack_show/snack_bar.dart';
import 'package:jerseyhub_admin/application/presentation/widgets/custom_text_field.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_inventory_r_espoonse_model/inventory.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_response_qurrey/get_response_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/update_inventory_model/update_inventory_model.dart';

class StockUpdater extends StatelessWidget {
  const StockUpdater({
    super.key,
    required this.inventory,
  });

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Avaliable stock : ',
              style: headStyle,
            ),
            BlocConsumer<EditInventoryBloc, EditInventoryState>(
              listener: (context, state) {
                if (state.hasError || state.isUpdated) {
                  showSnack(
                      context: context,
                      message: state.message!,
                      color: state.isUpdated ? kGreen : kRed);
                } else if (state.isDeleted) {
                  showSnack(
                      time: 2000,
                      context: context,
                      message: state.message!,
                      color: kRed);
                  context.read<GetInventoryBloc>().add(
                      GetInventoryEvent.getInventoryCall(
                          getResponseQurrey: GetResponseQurrey(page: 1)));
                  Navigator.pop(context);
                } else if (state.stock > inventory.stock!) {
                  showSnack(
                      context: context, message: state.message!, color: kGreen);
                }
              },
              builder: (context, state) {
                return Text(
                  state.stock.toString(),
                  style: priceStyle,
                );
              },
            )
          ],
        ),
        kHeight10,
        Row(
          children: [
            const Text(
              'Add Quantity',
              style: headStyle,
            ),
            kWidth30,
            IconButton(
                onPressed: () {
                  context
                      .read<EditInventoryBloc>()
                      .add(const EditInventoryEvent.decrementQuantity());
                },
                icon: const Icon(Iconsax.minus_cirlce)),
            Form(
              key: context.read<EditInventoryBloc>().stockFormKey,
              child: CustomTextFormField(
                controller:
                    context.read<EditInventoryBloc>().stockUpdateController,
                hintText: '0',
                width: sWidth * 0.20,
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
                onPressed: () {
                  context
                      .read<EditInventoryBloc>()
                      .add(const EditInventoryEvent.incrementQuantity());
                },
                icon: const Icon(Iconsax.add_circle)),
          ],
        ),
        kHeight10,
        ElevatedButton(
          onPressed: () {
            if (context
                .read<EditInventoryBloc>()
                .stockFormKey
                .currentState!
                .validate()) {
              context.read<EditInventoryBloc>().add(EditInventoryEvent.addStock(
                  updateInventoryModel: UpdateInventoryModel(
                      productId: inventory.id!,
                      stock: int.parse(context
                          .read<EditInventoryBloc>()
                          .stockUpdateController
                          .text
                          .trim()))));
            }
          },
          style: elevatedButtonStyleBlack,
          child: const Text('Update Inventory Stock'),
        ),
      ],
    );
  }
}
