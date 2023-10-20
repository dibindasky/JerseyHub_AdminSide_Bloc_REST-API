import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/edit_inventory/edit_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/screens/edit_inventory/widgets/details.dart';
import 'package:jerseyhub_admin/application/presentation/screens/edit_inventory/widgets/edit_image_tile.dart';
import 'package:jerseyhub_admin/application/presentation/screens/edit_inventory/widgets/stock_updator.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/domain/models/inventory/delete/delete_inventory_qurrey/delete_inventory_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_inventory_r_espoonse_model/inventory.dart';

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
                EditImageTile(inventory: inventory),
                kHeight10,
                Text(
                  inventory.productName!,
                  style: headStyle,
                ),
                kHeight10,
                StockUpdater(inventory: inventory),
                kHeight10,
                OtherDetails(inventory: inventory),
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
