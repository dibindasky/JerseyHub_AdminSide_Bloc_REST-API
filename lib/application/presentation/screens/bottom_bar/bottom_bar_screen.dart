// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub_admin/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/routes/routes.dart';
import 'package:jerseyhub_admin/application/presentation/screens/home/home_screen.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

import '../tab_view/tab_screen.dart';
import '../users/all_users.dart';
import '../../widgets/cart_icon.dart';
import '../inventory/add_inventory_screen.dart';

class ScreenBottombar extends StatefulWidget {
  const ScreenBottombar({Key? key}) : super(key: key);

  @override
  _ScreenBottombarState createState() => _ScreenBottombarState();
}

class _ScreenBottombarState extends State<ScreenBottombar>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 4, vsync: this);
    tabController.animation!.addListener(
      () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: kWhite, systemNavigationBarColor: kWhite),
            centerTitle: true,
            title: InkWell(
              onLongPress: () {
                context.read<AuthBloc>().add(const AuthEvent.signOut());
                Navigator.pushNamedAndRemoveUntil(
                    context, Routes.signInPage, (route) => false);
              },
              child: Text(
                'Jersey Hub',
                style: kronOne(fontSize: 0.05),
              ),
            ),
            actions: const [CartIconButton(), kWidth20],
          ),
          body: BottomBar(
            borderRadius: BorderRadius.circular(500),
            body: (context, controller) => Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: TabBarView(
                  controller: tabController,
                  dragStartBehavior: DragStartBehavior.down,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    ScreenHome(),
                    ScreenTabView(),
                    ScreenAddInventory(),
                    ScreenAllUsers()
                  ]),
            ),
            child: SizedBox(
              height: sWidth * 0.17,
              child: TabBar(
                controller: tabController,
                unselectedLabelColor: kGrey,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    icon: currentPage == 0
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(Iconsax.home),
                          )
                        : const Icon(Iconsax.home),
                  ),
                  Tab(
                    icon: currentPage == 1
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(Iconsax.percentage_circle),
                          )
                        : const Icon(Iconsax.percentage_circle),
                  ),
                  Tab(
                    icon: currentPage == 2
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(Iconsax.additem),
                          )
                        : const Icon(Iconsax.additem),
                  ),
                  Tab(
                    icon: currentPage == 3
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(Iconsax.people5),
                          )
                        : const Icon(Iconsax.people5),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
