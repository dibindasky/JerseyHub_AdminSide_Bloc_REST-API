import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/edit_inventory/edit_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/get_inventory/get_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub_admin/application/presentation/utils/snack_show/snack_bar.dart';
import 'package:jerseyhub_admin/application/presentation/widgets/custom_text_field.dart';
import 'package:jerseyhub_admin/domain/models/inventory/delete/delete_inventory_qurrey/delete_inventory_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_inventory_r_espoonse_model/inventory.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_response_qurrey/get_response_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/update_inventory_image_qurrey/update_inventory_image_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/update_inventory_model/update_inventory_model.dart';

class ScreenEditInventory extends StatelessWidget {
  const ScreenEditInventory({super.key, required this.inventory});

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<EditInventoryBloc>().add(EditInventoryEvent.setStock(
          stock: inventory.stock!, image: inventory.image!));
    });
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Update Stock',
            style: kronOne(fontSize: 0.05),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    context.read<EditInventoryBloc>().add(
                        EditInventoryEvent.updateImage(
                            updateInventoryImageQurrey:
                                UpdateInventoryImageQurrey(id: inventory.id!)));
                  },
                  child: BlocBuilder<EditInventoryBloc, EditInventoryState>(
                    builder: (context, state) {
                      return Container(
                        padding: const EdgeInsets.fromLTRB(20, 30, 30, 5),
                        height: sWidth * 0.70,
                        width: sWidth * 0.70,
                        decoration: const BoxDecoration(
                            color: kGrey,
                            borderRadius: BorderRadius.all(kRadius10)),
                        child: state.isImageUploading?const LoadingAnimation(width: 0.15) :SizedBox(
                            width: double.infinity,
                            child: state.image != null
                                ? Image.file(state.image!.fileImage)
                                : state.networkImage == null
                                    ? Image.network(inventory.image!)
                                    : Image.network(state.networkImage!)),
                      );
                    },
                  ),
                ),
                kHeight10,
                Text(
                  inventory.productName!,
                  style: headStyle,
                ),
                kHeight10,
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
                                  getResponseQurrey:
                                      GetResponseQurrey(page: 1)));
                          Navigator.pop(context);
                        } else if (state.stock > inventory.stock!) {
                          showSnack(
                              context: context,
                              message: state.message!,
                              color: kGreen);
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
                          context.read<EditInventoryBloc>().add(
                              const EditInventoryEvent.decrementQuantity());
                        },
                        icon: const Icon(Iconsax.minus_cirlce)),
                    Form(
                      key: context.read<EditInventoryBloc>().stockFormKey,
                      child: CustomTextFormField(
                        controller: context
                            .read<EditInventoryBloc>()
                            .stockUpdateController,
                        hintText: '0',
                        width: sWidth * 0.20,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          context.read<EditInventoryBloc>().add(
                              const EditInventoryEvent.incrementQuantity());
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
                      context.read<EditInventoryBloc>().add(
                          EditInventoryEvent.addStock(
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
                kHeight10,
                Row(
                  children: [
                    const Text(
                      'Size : ',
                      style: headStyle,
                    ),
                    Text(
                      inventory.size!,
                      style: priceStyle,
                    )
                  ],
                ),
                kHeight10,
                Row(
                  children: [
                    const Text(
                      'Price : ',
                      style: headStyle,
                    ),
                    Text(
                      inventory.price.toString(),
                      style: priceStyle,
                    )
                  ],
                ),
                kHeight10,
                Row(
                  children: [
                    const Text(
                      'Offer price : ',
                      style: headStyle,
                    ),
                    Text(
                      inventory.discountedPrice.toString(),
                      style: priceStyle,
                    )
                  ],
                ),
                kHeight10,
                ElevatedButton(
                  onPressed: () {
                    context.read<EditInventoryBloc>().add(
                        EditInventoryEvent.deleteInventory(
                            deleteInventoryQurrey:
                                DeleteInventoryQurrey(id: inventory.id!)));
                  },
                  style: elevatedButtonStyleRed,
                  child: const Text('Delete Invontory'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
