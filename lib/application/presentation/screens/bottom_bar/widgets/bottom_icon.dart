import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class BottomBarIcon extends StatelessWidget {
  const BottomBarIcon({
    super.key,
    required this.isSelected,
    required this.icon,
  });
  final bool isSelected;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(backgroundColor: kWhite, child: Icon(icon))
        : Icon(icon);
  }
}
