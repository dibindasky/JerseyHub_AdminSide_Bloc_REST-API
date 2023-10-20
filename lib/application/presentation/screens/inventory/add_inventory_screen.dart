import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/add_inventory/add_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/screens/inventory/widgets/button_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/screens/inventory/widgets/catogory_selector.dart';
import 'package:jerseyhub_admin/application/presentation/screens/inventory/widgets/image_container.dart';
import 'package:jerseyhub_admin/application/presentation/screens/inventory/widgets/quantity_adder.dart';
import 'package:jerseyhub_admin/application/presentation/screens/inventory/widgets/size_selector.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/widgets/custom_text_field.dart';

class ScreenAddInventory extends StatelessWidget {
  const ScreenAddInventory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Form(
          key: context.read<AddInventoryBloc>().inventoryKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('add new inventory'),
              kHeight10,
              const ImageShowContainer(),
              kHeight10,
              const Text('Title'),
              CustomTextFormField(
                  controller:
                      context.read<AddInventoryBloc>().productNameController,
                  textInputType: TextInputType.emailAddress,
                  hintText: 'Item Name',
                  icon: Iconsax.arrow_right_2),
              kHeight10,
              const Text('Price'),
              CustomTextFormField(
                  controller:
                      context.read<AddInventoryBloc>().productPriceController,
                  hintText: '1000',
                  icon: Iconsax.dollar_circle),
              kHeight10,
              const Text('Size Avaliable'),
              SizedBox(
                width: sWidth,
                child: const Row(
                  children: [
                    SizeSelector(size: "S"),
                    SizeSelector(size: "M"),
                    SizeSelector(size: "L"),
                    SizeSelector(size: "XL"),
                    SizeSelector(size: "XXL"),
                  ],
                ),
              ),
              kHeight10,
              const CategoryAdder(),
              kHeight20,
              const QuantityAdder(),
              kHeight20,
              const InventoryElevatedButton(),
              SizedBox(
                height: sWidth * 0.30,
              )
            ],
          ),
        )),
      ],
    );
  }
}

