import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub_admin/application/business_logic/category/category_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/offer/offer_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/widgets/custom_text_field.dart';
import 'package:jerseyhub_admin/domain/models/offer/add_offer_model/add_offer_model.dart';

class OfferAddingTile extends StatelessWidget {
  const OfferAddingTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CategoryBloc>().add(const CategoryEvent.getCaegory());
    });
    return SizedBox(
      height: sWidth * 0.60,
      width: sWidth,
      child: BlocBuilder<OfferBloc, OfferState>(
        builder: (context, state) {
          return Card(
              color: kGrey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('offer category'),
                    DropdownButton(
                      dropdownColor: kWhite,
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
                        context.read<OfferBloc>().add(OfferEvent.selectCatogory(
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
                    kHeight10,
                    const Text('Discount Persentage'),
                    CustomTextFormField(
                      color: kWhite,
                      hintText: 'amount',
                      controller:
                          context.read<OfferBloc>().offerAmountController,
                      width: sWidth * 0.50,
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton.icon(
                            onPressed: () {
                              context.read<OfferBloc>().add(OfferEvent.addOffer(
                                  addOfferModel: AddOfferModel(
                                      categoryId: state.catogoryId,
                                      discount: int.parse(context
                                          .read<OfferBloc>()
                                          .offerAmountController
                                          .text
                                          .trim()))));
                            },
                            icon: const Icon(Icons.add),
                            label: const Text('Add Offer')))
                  ],
                ),
              ));
        },
      ),
    );
  }
}
