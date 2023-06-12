import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../design_system/colors/palette.dart';
import '../../../../design_system/design_system.dart';
import '../../profile_page/components/bottom_sheet_shape.dart';

class OrderBottomSheet extends StatelessWidget {
  OrderBottomSheet({required this.title, this.EndTrip, this.RateIt,super.key});

  String title;
  Widget? EndTrip;
  Widget? RateIt;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: RPSCustomPainter(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: AppColor.white,
            ),

            padding: REdgeInsets.all(16.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                20.verticalSpace,
                Text(
                  title,
                  style: AppTextStyle.w700.copyWith(
                    fontSize: 22.sp,
                    color: AppColor.dark,
                  ),
                ),
                Column(
                  children: [
                    12.verticalSpace,
                    Text(
                      'Are you sure you want to end trip?'.tr(),
                      style: AppTextStyle.w500.copyWith(
                        fontSize: 16.sp,
                        color: AppColor.gray,
                      ),
                    ),
                    if (EndTrip != null) EndTrip! else RateIt!
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 2,
          left: MediaQuery.of(context).size.width / 2 - 20.5,
          child: Container(
            height: 4.r,
            width: 41.r,
            color: AppColor.white,
          ),
        ),
      ],
    );
  }
}
