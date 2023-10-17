import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/category/category_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/category/widgets/catogery_adding_tile.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/category/widgets/catogery_list_view.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub_admin/application/presentation/utils/snack_show/snack_bar.dart';

class CatogeryTab extends StatelessWidget {
  const CatogeryTab({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<CategoryBloc>().add(const CategoryEvent.getCaegory());
    });
    return Column(
      children: [
        const Text('Add a Category'),
        SizedBox(
          height: sWidth * 0.45,
          width: sWidth,
          child: const CatogeryAddTile(),
        ),
        const Divider(),
        const Text('Avaliable Catogerys'),
        Expanded(
          child: BlocConsumer<CategoryBloc, CategoryState>(
            listener: (context, state) {
              if (state.hasError || state.isDone) {
                showSnack(
                    context: context,
                    message: state.message ?? 'error',
                    color: state.isDone ? kGreen : kRed);
              }
            },
            builder: (context, state) {
              if (state.isLoading) {
                return const LoadingAnimation(width: 0.20);
              } else if (state.hasError ||
                  state.getCatogereyResponseModel!.data == null) {
                return const Text('nothing to show');
              } else if (state.getCatogereyResponseModel!.data!.isEmpty) {
                return const Text('add category');
              }
              return CatogeryListView(
                state: state,
              );
            },
          ),
        ),
        SizedBox(
          height: sWidth * 0.20,
        )
      ],
    );
  }
}
