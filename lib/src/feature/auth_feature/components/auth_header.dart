import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const AuthHeader({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DownToUp(
          withPosition: false,
          delayDurationInMilliseconds: 0,
          child: Center(
            child: Image.asset(
              AppIcon.logo,
              height: 72.h,
            ),
          ),
        ),
        20.verticalSpace,
        DownToUp(
          withPosition: false,
          delayDurationInMilliseconds: 0.2,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyle.w700.copyWith(
              fontSize: 28.sp,
              color: AppColor.dark,
            ),
          ),
        ),
        12.verticalSpace,
        DownToUp(
          withPosition: false,
          delayDurationInMilliseconds: 0.2,
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppTextStyle.w500.copyWith(
              fontSize: 16.sp,
              color: AppColor.dark,
            ),
          ),
        ),
      ],
    );
  }
}
