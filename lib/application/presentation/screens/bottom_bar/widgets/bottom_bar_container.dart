import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../business_logic/bottom_bar_cubit/bottom_bar_cubit_cubit.dart';
import '../../../utils/colors.dart';
import '../../../utils/constant.dart';
import 'bottom_Icon.dart';

class BottomNavigationContainer extends StatelessWidget {
  const BottomNavigationContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: sWidth * 0.70,
        height: sWidth * 0.17,
        margin: const EdgeInsets.fromLTRB(30, 0, 30, 20),
        decoration: const BoxDecoration(
            color: kBlack, borderRadius: BorderRadius.all(kRadius50)),
        child: BlocBuilder<BottomBarCubitCubit, BottomBarCubitState>(
          builder: (context, state) {
            return Theme(
              data: ThemeData(splashColor: Colors.transparent),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.transparent,
                elevation: 0,
                selectedFontSize: 0,
                unselectedFontSize: 0,
                selectedItemColor: kWhite,
                unselectedItemColor: kWhite.withOpacity(0.8),
                iconSize: sWidth * 0.06,
                currentIndex: state.currentIndex,
                onTap: (index) {
                  context.read<BottomBarCubitCubit>().changeIndex(index);
                },
                items: [
                  BottomNavigationBarItem(
                      icon: BottomBarIcon(
                        isSelected: state.currentIndex == 0,
                        icon: Iconsax.home,
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: BottomBarIcon(
                        isSelected: state.currentIndex == 1,
                        icon: Iconsax.percentage_circle,
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: BottomBarIcon(
                        isSelected: state.currentIndex == 2,
                        icon: Iconsax.additem,
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: BottomBarIcon(
                        isSelected: state.currentIndex == 3,
                        icon: Iconsax.people5,
                      ),
                      label: ''),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
