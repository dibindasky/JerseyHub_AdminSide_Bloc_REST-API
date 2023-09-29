import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/bottom_bar_cubit/bottom_bar_cubit_cubit.dart';
import 'package:jerseyhub_admin/application/presentation/screens/home/home_screen.dart';
import 'package:jerseyhub_admin/application/presentation/screens/search_screen/search_screen.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

import 'widgets/bottom_bar_container.dart';
import 'widgets/cart_icon.dart';

class ScreenBottombar extends StatelessWidget {
  const ScreenBottombar({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> bottomScreens = [ScreenHome(), ScreenSearch()];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Jersey Hub',
          style: kronOne(fontSize: 0.05),
        ),
        actions: const [CartIconButton(), kWidth20],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: BlocBuilder<BottomBarCubitCubit, BottomBarCubitState>(
            builder: (context, state) => bottomScreens[state.currentIndex]),
      ),
      extendBody: true,
      bottomNavigationBar: const BottomNavigationContainer(),
    );
  }
}
