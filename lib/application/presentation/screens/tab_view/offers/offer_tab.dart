import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub_admin/application/presentation/screens/inventory/add_inventory_screen.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/widgets/custom_text_field.dart';

class OffersTab extends StatelessWidget {
  const OffersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Add an Offer'),
        SizedBox(
          height: sWidth * 0.60,
          width: sWidth,
          child: Card(
              color: kGrey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('offer category'),
                    DropdownButton(
                      dropdownColor: kWhite,
                      //value: state.catogory,
                      borderRadius: const BorderRadius.all(kRadius20),
                      items: catogeryItems
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (selectedCatogory) {
                        // context.read<AddInventoryBloc>().add(
                        //     AddInventoryEvent.selectCatogory(
                        //         selectedCatogory: selectedCatogory!));
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
                    kHeight10,
                    const Text('Discount Persentage'),
                    CustomTextFormField(
                      color: kWhite,
                      hintText: 'amount',
                      controller: TextEditingController(),
                      width: sWidth * 0.50,
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.add),
                            label: const Text('Add Offer')))
                  ],
                ),
              )),
        ),
        const Divider(),
        const Text('Avaliable Offers'),
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => SizedBox(
                    width: sWidth,
                    height: sWidth * 0.229,
                    child: Card(
                      color: kGrey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Football',
                              style: kronOne(),
                            ),
                            // kHeight,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '40% Discound',
                                  style: TextStyle(color: kGreen),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Remove Offer',
                                      style: TextStyle(color: kRed),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
        )
      ],
    );
  }
}
