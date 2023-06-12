import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import '../../../../design_system/design_system.dart';

class NoFavouriteWidget extends StatelessWidget {
  const NoFavouriteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppSvg.asset(
            AppIcon.noFavourite,
            height: 120.h,
            width: 120.h,
          ),
          24.verticalSpace,
          Text('No favorites yet'.tr(),
            style: AppTextStyle.w600.copyWith(
              fontSize: 24.sp,
              color: AppColor.dark,
            ),
          ),
          16.verticalSpace,
          Text('Mark your  favorite cars and always have  them here'.tr(),
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
              'Add favorites '.tr(),
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
