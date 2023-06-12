import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../../design_system/design_system.dart';

//nb=
class FilterInfoWidget extends StatelessWidget {
  bool isLoaction;
  Widget icon;
  String filterText;
   FilterInfoWidget(
    this.filterText,this.icon,this.isLoaction,
    {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.r),
        color: AppColor.cF2F2F2,
    ),
    width: double.infinity,
    height: 44.h,
    child: Row(
      children: [
         Padding(
          padding:  EdgeInsets.only(top: 14.h, left: 14.w, bottom: 14.h),
          child: icon
        ),
         SizedBox(
          width: 10.w,
        ),
         Padding(
          padding:  EdgeInsets.only(
            top: 12.5.h,
            bottom: 12.5.h,
          ),
          child: Text(
           filterText,
            style:  AppTextStyle.w400.copyWith(
              color: AppColor.dark,
              fontSize: 16,
            ),
          ).tr(),
        ),
        Expanded(child: Container(),),
        if (isLoaction) SizedBox.shrink() else Padding(
          padding:  EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
          child: Container(
            padding:  EdgeInsets.symmetric(
              horizontal: 8.w,
              vertical: 6.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              color: AppColor.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
              AppSvg.asset(AppIcon.clock),
              //nb=
                SizedBox(width: 6.w,),
                Text(
                  '10:00',
                  style: AppTextStyle.w400.copyWith(
                    color: AppColor.dark,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
  }
}

