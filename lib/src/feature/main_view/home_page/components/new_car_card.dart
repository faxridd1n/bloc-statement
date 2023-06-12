import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../design_system/assets/app_images.dart';
import '../../../../design_system/colors/palette.dart';
import '../../../../design_system/design_system.dart';

class NewCarCard extends StatelessWidget {
  const NewCarCard({
    super.key,
    required this.title,
    required this.onTab,
  });

  final String title;
  final Function() onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        image: DecorationImage(
          image: const AssetImage(
            AppImages.autoImage,
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              AppColor.dark.withOpacity(0.3),
              BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 36.h,
            child: Text(
              title,
              style: AppTextStyle.w700.copyWith(
                color: AppColor.white,
                fontSize: 28.sp,
              ),
            ),
          ),
          10.44.verticalSpace,
          GestureDetector(
            onTap: onTab,
            child: Container(
              height: 31.h,
              width: 104.w,
              decoration: BoxDecoration(
                //color: AppColor.white.withOpacity(0.8),
                border: Border.all(
                  width: 0.7.sp,
                  color: AppColor.white,
                ),
              ),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                  child: Center(
                    child: Text(
                      'Book Now',
                      style: AppTextStyle.w700.copyWith(
                        fontSize: 12.sp,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
