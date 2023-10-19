import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/category/category_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/category/widgets/catogery_adding_tile.dart';
import 'package:jerseyhub_admin/application/presentation/screens/tab_view/category/widgets/catogory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

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
        const CatogeryAddTile(),
        const Divider(),
        const Text('Avaliable Catogerys'),
        const CatogoryBloc(),
        SizedBox(
          height: sWidth * 0.20,
        )
      ],
    );
  }
}