import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/edit_inventory/edit_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_inventory_r_espoonse_model/inventory.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/update_inventory_image_qurrey/update_inventory_image_qurrey.dart';

class EditImageTile extends StatelessWidget {
  const EditImageTile({
    super.key,
    required this.inventory,
  });

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<EditInventoryBloc>().add(EditInventoryEvent.updateImage(
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
                color: kGrey, borderRadius: BorderRadius.all(kRadius10)),
            child: state.isImageUploading
                ? const LoadingAnimation(width: 0.15)
                : SizedBox(
                    width: double.infinity,
                    child: state.image != null
                        ? Image.file(state.image!.fileImage)
                        : state.networkImage == null
                            ? Image.network(inventory.image!)
                            : Image.network(state.networkImage!)),
          );
        },
      ),
    );
  }
}
