import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/category/category_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/utils/show_dialoge/custom_show_dialoge.dart';
import 'package:jerseyhub_admin/domain/models/catogery/delete_catogery_qurrey/delete_catogery_qurrey.dart';

class CatogeryListView extends StatelessWidget {
  const CatogeryListView({super.key, required this.state});

  final CategoryState state;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: state.getCatogereyResponseModel!.data!.length,
      itemBuilder: (context, index) => ListTile(
        leading: Text(
          state.getCatogereyResponseModel!.data![index].category!,
          style: kronOne(),
        ),
        onTap: () {
          context.read<CategoryBloc>().add(CategoryEvent.tapEdit(
              category:
                  state.getCatogereyResponseModel!.data![index].category!));
        },
        trailing: IconButton(
            onPressed: () async {
              void onDeletePressed() async {
                context.read<CategoryBloc>().add(CategoryEvent.deleteCaegory(
                    deleteCatogeryQurrey: DeleteCatogeryQurrey(
                        id: state
                            .getCatogereyResponseModel!.data![index].id!)));
              }

              await customShowDialoge(
                context: context,
                onPress: onDeletePressed,
              );
            },
            icon: const Icon(Icons.delete_outline_sharp)),
      ),
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
