import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../design_system/design_system.dart';

class NoOrderWidget extends StatelessWidget {
  const NoOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppSvg.asset(
            AppIcon.noOrder,
            height: 120.h,
            width: 120.h,
          ),
          24.verticalSpace,
          Text('noOrder'.tr(),
          style: AppTextStyle.w600.copyWith(
            fontSize: 24.sp,
            color: AppColor.dark,
          ),
          ),
          16.verticalSpace,
          Text('youHaveNotRentedAnyCarYet'.tr(),
            textAlign: TextAlign.center,
            style: AppTextStyle.w400.copyWith(
              fontSize: 16.sp,
              color: AppColor.c677294,
            ),
          ),
          32.verticalSpace,
          PrimaryButton(
            maxWidth: 300.w,
            onPressed: () {},
            child: Text(
              'startBooking'.tr(),
              textAlign: TextAlign.center,
              style: AppTextStyle.w500.copyWith(
                fontSize: 16.sp,
                color: AppColor.dark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
