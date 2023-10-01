import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/bottom_bar_cubit/bottom_bar_cubit_cubit.dart';
import 'package:jerseyhub_admin/application/presentation/routes/routes.dart';
import 'package:jerseyhub_admin/application/presentation/screens/home/home_screen.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

import '../tab_view/tab_screen.dart';
import '../users/all_users.dart';
import 'widgets/bottom_bar_container.dart';
import 'widgets/cart_icon.dart';
import '../inventory/add_inventory_screen.dart';

class ScreenBottombar extends StatelessWidget {
  const ScreenBottombar({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> bottomScreens = [
      ScreenHome(),
      ScreenTabView(),
      ScreenAddInventory(),
      ScreenAllUsers()
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: InkWell(
          onLongPress: () {
            context.read<AuthBloc>().add(const AuthEvent.signOut());
            Navigator.pushNamedAndRemoveUntil(context, Routes.signInPage, (route) => false);
          },
          child: Text(
            'Jersey Hub',
            style: kronOne(fontSize: 0.05),
          ),
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
