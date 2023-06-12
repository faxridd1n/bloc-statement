import 'package:flutter/material.dart';
import '../../../../design_system/design_system.dart';

class SuccessfullyBottomSheet extends StatelessWidget {
  const SuccessfullyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 45.w,
        vertical: 32.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          8.verticalSpace,
          Container(
            height: 150.r,
            width: 150.r,
            color: AppColor.dark,
          ),
          24.verticalSpace,
          Text(
            'Successfully',
            style: AppTextStyle.w700.copyWith(
              fontSize: 32.sp,
              color: AppColor.primary,
            ),
          ),
          8.verticalSpace,
          SizedBox(
            child: Text(
              'Your car have been successfully booked for 12.04.2023 at 15:30',
              style: AppTextStyle.w400.copyWith(
                fontSize: 16.sp,
                color: AppColor.dark,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          24.verticalSpace,
          PrimaryButton.custom(
            onPressed: (){},
            background: AppColor.primary,
            foreground: AppColor.dark,
            minHeight: 50.h,
            maxWidth: 300.w,
            child: Text(
              'Go to home',
              style: AppTextStyle.w500.copyWith(
                fontSize: 16.sp,
                color: AppColor.dark,
              ),
            ),
          ),
          24.verticalSpace,
          Text(
            'Book another car',
            style: AppTextStyle.w500.copyWith(
              fontSize: 16.sp,
              color: AppColor.primary,
            ),
          ),
        ],
      ),
    );
  }
}
