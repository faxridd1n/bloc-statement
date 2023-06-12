import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormat;
  final TextInputType? keyboardType;
  final bool? isPassword;
  final bool? isVisible;
  final bool? readOnly;
  final int? maxLength;
  final Color? fillColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const AppTextFormField({
    super.key,
    required this.controller,
    this.hintText,
    this.validator,
    this.inputFormat,
    this.keyboardType,
    this.isPassword,
    this.isVisible,
    this.readOnly,
    this.maxLength,
    this.fillColor = AppColor.white,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      inputFormatters: inputFormat,
      keyboardType: keyboardType,
      maxLength: maxLength,
      obscureText: isVisible ?? false,
      readOnly: readOnly ?? false,
      style: AppTextStyle.w400.copyWith(fontSize: 16),
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: true,
        hintText: hintText ?? '',
        counterText: '',
        hintStyle: AppTextStyle.w400
            .copyWith(fontSize: 16.sp, color: AppColor.c677294),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide(color:  Colors.grey.shade900),
        ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(4.r),
        //   borderSide: const BorderSide(color: AppColor.blue),
        // ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide(color:Colors.grey.shade900),
        ),
      ),
    );
  }
}
