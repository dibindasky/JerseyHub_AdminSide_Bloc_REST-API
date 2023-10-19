import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/category/category_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub_admin/application/presentation/widgets/custom_text_field.dart';
import 'package:jerseyhub_admin/domain/models/catogery/post_catogery_model/post_catogery_model.dart';
import 'package:jerseyhub_admin/domain/models/catogery/put_catogery_model/put_catogery_model.dart';

class CatogeryAddTile extends StatelessWidget {
  const CatogeryAddTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sWidth * 0.45,
      width: sWidth,
      child: Card(
          color: kGrey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Category Name'),
                kHeight10,
                CustomTextFormField(
                  textInputType: TextInputType.name,
                  color: kWhite,
                  hintText: 'Catogery Name',
                  controller: context.read<CategoryBloc>().categoryController,
                  width: sWidth * 0.50,
                ),
                kHeight10,
                Align(
                    alignment: Alignment.bottomRight,
                    child: BlocBuilder<CategoryBloc, CategoryState>(
                      builder: (context, state) {
                        if (state.isAdding) {
                          return const LoadingAnimation(width: 0.10);
                        }
                        return TextButton.icon(
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              state.isupdating
                                  ? context.read<CategoryBloc>().add(
                                      CategoryEvent.renameCaegory(
                                          putCatogeryModel: PutCatogeryModel(
                                              current: context
                                                  .read<CategoryBloc>()
                                                  .currentCategory!,
                                              newName: context
                                                  .read<CategoryBloc>()
                                                  .categoryController
                                                  .text
                                                  .trim())))
                                  : context.read<CategoryBloc>().add(
                                      CategoryEvent.addCaegory(
                                          postCatogeryModel: PostCatogeryModel(
                                              category: context
                                                  .read<CategoryBloc>()
                                                  .categoryController
                                                  .text
                                                  .trim())));
                            },
                            icon: Icon(state.isupdating
                                ? Icons.edit_note_outlined
                                : Icons.add),
                            label: Text(state.isupdating
                                ? 'Edit Category'
                                : 'Add Category'));
                      },
                    ))
              ],
            ),
          )),
    );
  }
}
