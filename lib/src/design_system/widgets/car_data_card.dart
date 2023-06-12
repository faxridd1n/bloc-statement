import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../assets/app_images.dart';
import '../colors/palette.dart';
import '../design_system.dart';
import 'custom_button.dart';

class CarDataCard extends StatelessWidget {
  const CarDataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0.sp, 0.sp),
            blurRadius: 20.sp,
            color: AppColor.black.withOpacity(0.08),
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 162.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColor.white,
            ),
            padding: EdgeInsets.only(
              right: 12.w,
              left: 12.w,
              top: 12.h,
              bottom: 13.h,
            ),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 110.r,
                      width: 110.r,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        image: const DecorationImage(
                          image: AssetImage(
                            AppImages.autoDataImage,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 16.r,
                          color: Colors.redAccent,
                        ),
                        6.horizontalSpace,
                        Text(
                          'Tashkent city',
                          style: AppTextStyle.w400.copyWith(
                            fontSize: 12.sp,
                            color: AppColor.dark,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                12.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GLA 250 SUV 2022',
                      style: AppTextStyle.w600.copyWith(
                        fontSize: 16.sp,
                        color: AppColor.dark,
                      ),
                    ),
                    4.verticalSpace,
                    Text(
                      'Mercedes-Benz',
                      style: AppTextStyle.w400.copyWith(
                        fontSize: 12.sp,
                        color: AppColor.c677294,
                      ),
                    ),
                    12.verticalSpace,
                    Row(
                      children: [
                        _card('A/T', AppIcon.extension),
                        8.horizontalSpace,
                        _card('4 doors', AppIcon.door),
                        8.horizontalSpace,
                        _card('A/C', AppIcon.conditioner),
                      ],
                    ),
                    8.verticalSpace,
                    Row(
                      children: [
                        _card('5 passengers', AppIcon.passenger),
                        8.horizontalSpace,
                        _card('Petrol', AppIcon.petrol),
                      ],
                    ),
                    16.verticalSpace,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          AppIcon.tickCircle,
                          height: 16.r,
                          width: 16.r,
                        ),
                        6.horizontalSpace,
                        Text(
                          'Tashkent city',
                          style: AppTextStyle.w400.copyWith(
                            fontSize: 12.sp,
                            color: AppColor.dark,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 56.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColor.white,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 12.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '990 000 UZS',
                      style: AppTextStyle.w600.copyWith(
                        fontSize: 16.sp,
                        color: AppColor.dark,
                      ),
                    ),
                    //2.verticalSpace,
                    Text(
                      'Available from April 18',
                      style: AppTextStyle.w400.copyWith(
                        fontSize: 10.sp,
                        color: AppColor.c677294,
                      ),
                    )
                  ],
                ),
                CustomButton(
                  onTab: (){
                    context.push('/CarDataPage');
                  },
                  text: 'Book Now',
                  height: 32.h,
                  width: 104.w,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _card(String text, String icon){
    return Container(
      height: 24.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.r),
        border: Border.all(
          color: AppColor.cF2F2F2,
          width: 1.sp,
        ),
        color: AppColor.white,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            height: 16.r,
            width: 16.r,
          ),
          4.horizontalSpace,
          Text(
            text,
            style: AppTextStyle.w500.copyWith(
              fontSize: 12.sp,
              color: AppColor.dark,
            ),
          )
        ],
      ),
    );
  }
}
