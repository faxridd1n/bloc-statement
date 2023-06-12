import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../design_system/design_system.dart';


class MyTextFormFields extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  final String hintText;
  final String? title;
  final double? width;
  final String? icon;
  void Function()? onPressed;

  MyTextFormFields({
    required this.controller,
    this.title,
    this.width,
    required this.hintText,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title!.tr(),style: AppTextStyle.w600.copyWith(
          fontSize: 14.sp,
          color: AppColor.dark,
        ),),
        8.verticalSpace,
        SizedBox(
          height: 48.h,
          width: width ?? 360.w,
          child: TextFormField(
            controller: controller,
            style: const TextStyle(
              color: AppColor.c677294,
            ),
            decoration: InputDecoration(
              suffixIcon: icon != null
                  ? IconButton(onPressed: onPressed, icon: SvgPicture.asset(icon!))
                  : null,
              hintText: hintText.tr(),
              enabledBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.r),
                borderSide: const BorderSide(
                  color: AppColor.cE2E2E2,
                ),
              ),
              hintStyle:  AppTextStyle.w400.copyWith(
                  fontSize: 16.sp,
                  color: AppColor.dark
              ),
            ),
          ),
        ),
      ],
    );
  }
}