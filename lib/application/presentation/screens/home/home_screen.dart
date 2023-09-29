import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

import 'widgets/custom_search_field.dart';
import 'widgets/popular_gridview.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CoustomSearchField(),
            kHeight10,
            ProductGridHome(),
          ],
        ),
      ),
    );
  }
}
