import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../design_system/colors/palette.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Container(
        height: 46.h,
        decoration: BoxDecoration(
            color: AppColor.cF2F2F2,
            borderRadius: BorderRadius.circular(10.r),),
        child: TabBar(
          splashBorderRadius: BorderRadius.circular(10.r),
          padding: EdgeInsets.all(4.h),
          indicator: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(10.r),),
          labelColor: AppColor.dark,
          unselectedLabelColor: AppColor.c16161A,
          tabs: [
            Tab(text: 'Vehicle info'.tr()),
            Tab(text: 'Booking history'.tr()),
          ],
        ),
      ),
    );
  }
}
