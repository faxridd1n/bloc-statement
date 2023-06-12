import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../design_system/design_system.dart';

AppBar appBarHome({
  required BuildContext context,
  String? title,
}){
  return AppBar(
    title: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){},
              child: Row(
                children: [
                  Text(
                    'Your address',
                    style: AppTextStyle.w400.copyWith(
                      color: AppColor.c677294,
                      fontSize: 12.sp,
                    ),
                  ),
                  4.horizontalSpace,
                  AppSvg.asset(
                    AppIcon.chevronRight,
                    height: 12.r,
                    width: 12.r,
                  )
                ],
              ),
            ),
            Text(
              title ?? 'Select your position',
              style: AppTextStyle.w400.copyWith(
                fontSize: 14.sp,
                color: AppColor.c1A0700,
              ),
            )
          ],
        )
      ],
    ),
    actions: [
      InkWell(
        onTap: (){
          context.push('/NotificationPage');
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: AppSvg.asset(
            AppIcon.notification,
            height: 24.r,
            width: 24.r,
          ),
        ),
      )
    ],
    backgroundColor: AppColor.white,
    elevation: 0,
    toolbarHeight: 60.h,
  );
}
