import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub_admin/application/business_logic/add_inventory/add_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub_admin/application/presentation/utils/snack_show/snack_bar.dart';
import 'package:jerseyhub_admin/application/presentation/widgets/custom_text_field.dart';

const List<String> catogeryItems = ['Football', 'Cricket', 'Basketball'];

class ScreenAddInventory extends StatelessWidget {
  const ScreenAddInventory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: BlocConsumer<AddInventoryBloc, AddInventoryState>(
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
              return Form(
                key: context.read<AddInventoryBloc>().inventoryKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('add new inventory'),
                    kHeight10,
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageShowContainer(),
                        Column(
                          children: [Icon(Iconsax.image), Text('Add Image')],
                        ),
                      ],
                    ),
                    kHeight10,
                    const Text('Title'),
                    CustomTextFormField(
                        controller: context
                            .read<AddInventoryBloc>()
                            .productNameController,
                        textInputType: TextInputType.emailAddress,
                        hintText: 'Item Name',
                        icon: Iconsax.arrow_right_2),
                    kHeight10,
                    const Text('Price'),
                    CustomTextFormField(
                        controller: context
                            .read<AddInventoryBloc>()
                            .productPriceController,
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
                    Align(
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
                                    message:
                                        'image is required to perform action');
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
                                print(state.size);
                              }
                              if (state.catogory == null) {
                                showSnack(
                                    context: context,
                                    color: Colors.red,
                                    message: 'choose catogery and try again');
                                return;
                              } else {
                                formMap['category_id'] = 1;
                                // formMap['category_id'] = state.catogoryId;
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
                              context.read<AddInventoryBloc>().add(
                                  AddInventoryEvent.addJersey(
                                      formData: formData));
                            }
                          },
                          icon: const Icon(Iconsax.add),
                          label: const Text('Add jersey'),
                          style: elevatedButtonStyle,
                        )),
                    SizedBox(
                      height: sWidth * 0.30,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class CategoryAdder extends StatelessWidget {
  const CategoryAdder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddInventoryBloc, AddInventoryState>(
      builder: (context, state) {
        return Row(
          children: [
            const Text('Select Catogery'),
            kWidth30,
            DropdownButton(
              value: state.catogory,
              borderRadius: const BorderRadius.all(kRadius20),
              items:
                  catogeryItems.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (selectedCatogory) {
                context.read<AddInventoryBloc>().add(
                    AddInventoryEvent.selectCatogory(
                        selectedCatogory: selectedCatogory!));
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

class ImageShowContainer extends StatelessWidget {
  const ImageShowContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddInventoryBloc, AddInventoryState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context
                .read<AddInventoryBloc>()
                .add(const AddInventoryEvent.addImage());
          },
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 30, 30, 5),
            height: sWidth * 0.70,
            width: sWidth * 0.70,
            decoration: const BoxDecoration(
                color: kGrey, borderRadius: BorderRadius.all(kRadius10)),
            child: SizedBox(
                width: double.infinity,
                child: state.image != null
                    ? Image.file(state.image!.fileImage)
                    : Image.network(manjestCity)),
          ),
        );
      },
    );
  }
}

class SizeSelector extends StatelessWidget {
  const SizeSelector({super.key, required this.size});
  final String size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddInventoryBloc, AddInventoryState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context
                .read<AddInventoryBloc>()
                .add(AddInventoryEvent.pickSize(size: size));
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: state.size == size ? kBlack : kWhite,
                borderRadius: const BorderRadius.all(kRadius5),
                border: Border.all()),
            child: Text(
              ' $size ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: state.size == size ? kWhite : kBlack),
            ),
          ),
        );
      },
    );
  }
}
