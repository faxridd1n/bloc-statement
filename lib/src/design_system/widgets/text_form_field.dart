import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

class MyTextFormFild extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? icon;
  final void Function()? onPressed;

  const MyTextFormFild({
    required this.controller,
    required this.hintText,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(
        color: AppColor.gray,
      ),
      decoration: InputDecoration(
        suffixIcon: icon != null
            ? IconButton(onPressed: onPressed, icon: SvgPicture.asset(icon!))
            : null,
        hintText: hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.cE2E2E2,
          ),
        ),
        hintStyle: AppTextStyle.w400.copyWith(
          fontSize: 16,
          color: AppColor.gray,
        ),
      ),
    );
  }
}
