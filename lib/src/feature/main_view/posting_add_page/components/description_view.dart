import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../design_system/design_system.dart';

class DescriptionView extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  final String hintText;
  final String title;
  final String? icon;
  void Function()? onPressed;

  DescriptionView({
    required this.controller,
    required this.title,
    required this.hintText,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  REdgeInsets.fromLTRB(16,0,16,16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title.tr(),style: AppTextStyle.w600.copyWith(
              fontSize: 14.sp,
              color: AppColor.dark,
            ),),
            8.verticalSpace,
            SizedBox(
              height: 120.h,
              child: TextFormField(
                controller: controller,
                style: const TextStyle(
                  color: AppColor.c677294,
                ),
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: icon != null
                      ? IconButton(onPressed: onPressed, icon: SvgPicture.asset(icon!))
                      : null,
                  hintText: hintText,
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: const BorderSide(
                      color: AppColor.cE2E2E2,
                    ),
                  ),
                  hintStyle: AppTextStyle.w400.copyWith(
                    fontSize: 16.sp,
                    color: AppColor.gray,
                  ),
                  contentPadding: REdgeInsets.symmetric(vertical: 100, horizontal: 10,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}