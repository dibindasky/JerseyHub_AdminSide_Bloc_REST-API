import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/add_inventory/add_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/widgets/custom_text_field.dart';

class QuantityAdder extends StatelessWidget {
  const QuantityAdder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Add Quantity'),
        kWidth30,
        IconButton(
            onPressed: () {
              context
                  .read<AddInventoryBloc>()
                  .add(const AddInventoryEvent.decrementQuantity());
            },
            icon: const Icon(Iconsax.minus_cirlce)),
        CustomTextFormField(
          controller:
              context.read<AddInventoryBloc>().productQuantityController,
          hintText: '0',
          width: sWidth * 0.20,
          textAlign: TextAlign.center,
        ),
        IconButton(
            onPressed: () {
              context
                  .read<AddInventoryBloc>()
                  .add(const AddInventoryEvent.incrementQuantity());
            },
            icon: const Icon(Iconsax.add_circle)),
      ],
    );
  }
}
