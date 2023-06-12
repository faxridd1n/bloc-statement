import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

//nb=
class SearchedCarsWidget extends StatelessWidget {
  String searchedCar;
   SearchedCarsWidget(this.searchedCar,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
  height: 41.h,
    padding:  EdgeInsets.only(top: 16.h,left: 16.h),
    child: Row(
      children: [
       AppSvg.asset(AppIcon.coloredClock),
         SizedBox(
          width: 10.w,
        ),
        Text(
          searchedCar,
          style:  AppTextStyle.w400.copyWith(
            color: AppColor.dark,
            fontSize: 16,
          ),
        )
      ],
    ),
  );

  }
}

//nb=