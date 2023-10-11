import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/add_inventory/add_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.icon,
      this.width = 500,
      this.textAlign = TextAlign.start,
      required this.controller,
      this.color = kGrey,
      this.textInputType = TextInputType.number});
  final String hintText;
  final IconData? icon;
  final double width;
  final TextAlign textAlign;
  final TextInputType textInputType;
  final TextEditingController controller;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: color,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty &&
                  controller ==
                      context
                          .read<AddInventoryBloc>()
                          .productQuantityController ||
              context.read<AddInventoryBloc>().productQuantityController.text ==
                  '0') {
            return 'Add field';
          }
          if (value.isEmpty) {
            return 'This field cannot be empty';
          }
          return null;
        },
        controller: controller,
        textAlign: textAlign,
        keyboardType: textInputType,
        decoration: InputDecoration(
            prefixIcon: icon != null ? Icon(icon) : null,
            border: InputBorder.none,
            hintText: hintText),
      ),
    );
  }
}