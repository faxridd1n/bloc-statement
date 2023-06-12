import 'package:flutter/material.dart';

import '../../../../../design_system/design_system.dart';

class BottomCarData extends StatelessWidget {
  const BottomCarData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102.h,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColor.c8D8D8D.withOpacity(0.15),
            blurRadius: 12.r,
            spreadRadius: 0.r,
            offset: Offset(0.sp, -4.sp),
          )
        ],
        color: AppColor.white
      ),
      child: Center(
        child: PrimaryButton(
          onPressed: (){},
          child: Text(
            'Book Now',
            style: AppTextStyle.w500.copyWith(
              fontSize: 16.sp,
              color: AppColor.dark,
            ),
          ),
        ),
      ),
    );
  }
}
