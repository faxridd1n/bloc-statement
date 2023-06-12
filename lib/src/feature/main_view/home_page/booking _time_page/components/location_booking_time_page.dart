import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../design_system/design_system.dart';

class LocationBookingtimePage extends StatelessWidget {
  const LocationBookingtimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pickup and return location',
            style: AppTextStyle.w600.copyWith(
              fontSize: 18.sp,
              color: AppColor.dark,
            ),
          ),
          12.verticalSpace,
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
            ),
            height: 50.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(4.r),
              border: Border.all(
                color: AppColor.cE2E2E2,
                width: 1.w,
              ),
            ),
            child: Row(
            children: [
              SvgPicture.asset(
                AppIcon.locationIcon,
                height: 24.r,
                width: 24.r,
              ),
              8.horizontalSpace,
              Text(
                'Amir Temur street 9a',
                style: AppTextStyle.w400.copyWith(
                  color: AppColor.dark,
                  fontSize: 16.sp,
                ),
              )
            ],
            ),
          )
        ],
      ),
    );
  }
}
