import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors/palette.dart';
import '../style/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTab,
    this.height,
    this.width,
    this.radius,
    this.color,
    required this.text,
    this.textSize,
    this.iconHeight,
    this.iconWidth
  });

  final Function() onTab;
  final double? height;
  final double? width;
  final double? radius;
  final Color? color;
  final String text;
  final double? textSize;
  final double? iconHeight;
  final double? iconWidth;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTab,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
            width ?? double.infinity,
            height ?? 50.h,
        ),
        backgroundColor: color ?? AppColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 4.r),
        ),
      ),
      child: Center(
            child: Text(
              text,
              style: AppTextStyle.w500.copyWith(
                fontSize: textSize ?? 16.sp,
                color: AppColor.dark,
              ),
            ),
          ),
    );
  }
}

