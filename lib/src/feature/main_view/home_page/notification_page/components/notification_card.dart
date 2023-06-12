import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../design_system/assets/app_icons.dart';
import '../../../../../design_system/colors/palette.dart';
import '../../../../../design_system/design_system.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.date,
    required this.title,
    required this.description,
  });

  final DateTime date;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColor.white,
        border: Border.all(
          color: AppColor.primary,
          width: 1.w,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withOpacity(0.08),
            blurRadius: 20.r,
            offset: Offset(0.sp, 0.sp),
            spreadRadius: 0.r,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 12.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Svg qilib oldim lekin chiqmadi.
              /// Shuning uchun png qilib quydim
              const Image(
                image: AssetImage(
                  AppIcon.notificationRent,
                ),
                height: 16,
                width: 76,
              ),
              Text(
                  _convertDataTime(date),
                style: AppTextStyle.w400.copyWith(
                  fontSize: 12.sp,
                  color: AppColor.c677294,
                ),
              ),
            ],
          ),
          8.verticalSpace,
          Text(
            title,
            style: AppTextStyle.w500.copyWith(
              fontSize: 16.sp,
              color: AppColor.dark,
            ),
          ),
          4.verticalSpace,
          Text(
            description,
            style: AppTextStyle.w400.copyWith(
              fontSize: 14.sp,
              color: AppColor.dark,
            ),
          ),
        ],
      ),
    );
  }

  String _convertDataTime(DateTime time){
    final String month = _switchMonth(time);
    return '${time.day} $month ${time.year} ${time.hour}:${time.minute}';
  }

  String _switchMonth(DateTime time){
    switch (time.month.toString()){
      case '1' :
        return 'Jan';
      case '2' :
        return 'Feb';
      case '3' :
        return 'Mar';
      case '4' :
        return 'Apr';
      case '5' :
        return 'May';
      case '6' :
        return 'June';
      case '7' :
        return 'July';
      case '8' :
        return 'Aug';
      case '9' :
        return 'Sep';
      case '10' :
        return 'Oct';
      case '11' :
        return 'Nov';
      case '12' :
        return 'Dec';
    }
    return '';
  }
}
