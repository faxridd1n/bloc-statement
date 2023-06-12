import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../design_system/colors/palette.dart';
import '../../../../design_system/design_system.dart';
import 'bottom_sheet_shape.dart';

class LanguageBottomSheet extends StatelessWidget {
  LanguageBottomSheet({required this.title, this.LogoutButton,this.LanguageButton,super.key});

  String title;
  Widget? LogoutButton;
  Widget? LanguageButton;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: RPSCustomPainter(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: AppColor.white,
            ),

            padding: REdgeInsets.all(16.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                20.verticalSpace,
                Text(
                  title,
                  style: AppTextStyle.w700.copyWith(
                    fontSize: 22.sp,
                    color: AppColor.dark,
                  ),
                ),
                if (LanguageButton != null) LanguageButton! else LogoutButton!,
              ],
            ),
          ),
        ),
        Positioned(
          top: 2,
          left: MediaQuery.of(context).size.width / 2 - 20.5,
          child: Container(
            height: 4.r,
            width: 41.r,
            color: AppColor.white,
          ),
        ),
      ],
    );
  }
}
