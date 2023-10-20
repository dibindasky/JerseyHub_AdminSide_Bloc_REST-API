import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub_admin/application/business_logic/category/category_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/add_inventory/add_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

class CategoryAdder extends StatelessWidget {
  const CategoryAdder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CategoryBloc>().add(const CategoryEvent.getCaegory());
    });
    return BlocBuilder<AddInventoryBloc, AddInventoryState>(
      builder: (context, state) {
        return Row(
          children: [
            const Text('Select Catogery'),
            kWidth30,
            DropdownButton(
              value: state.catogory,
              borderRadius: const BorderRadius.all(kRadius20),
              items: context
                  .read<CategoryBloc>()
                  .catogoryMap
                  .keys
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (selectedCatogory) {
                context.read<AddInventoryBloc>().add(
                    AddInventoryEvent.selectCatogory(
                        selectedCatogory: context
                            .read<CategoryBloc>()
                            .catogoryMap[selectedCatogory]!,
                        catogory: selectedCatogory!));
              },
              hint: Text(
                'Catogery ',
                style: kronOne(),
              ),
              icon: const Icon(
                Iconsax.arrow_square_down,
                color: kBlack,
              ),
            ),
          ],
        );
      },
    );
  }
}

