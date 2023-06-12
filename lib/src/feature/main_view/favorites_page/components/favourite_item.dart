import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../design_system/assets/app_images.dart';
import '../../../../design_system/colors/palette.dart';
import '../../../../design_system/design_system.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 20.sp,
            color: AppColor.black.withOpacity(0.08),
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            // height: 162.h,
            padding: REdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColor.white,
            ),
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 110.r,
                        width: 110.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          image: const DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              AppImages.autoDataImage,
                            ),
                          ),
                        ),
                      ),
                      12.horizontalSpace,
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                    Text(
                                      'Mercedes-Benz',
                                      style: AppTextStyle.w400.copyWith(
                                        fontSize: 12.sp,
                                        color: AppColor.c677294,
                                      ),
                                    ),
                                  ],
                                ),
                                SvgPicture.asset(
                                  AppIcon.favouritePrimary,
                                  height: 16.r,
                                  width: 16.r,
                                ),
                              ],
                            ),
                            6.verticalSpace,
                            Wrap(
                              children: const [
                                _CarPropertyView(
                                  title: 'A/T',
                                  asset: AppIcon.extension,
                                ),
                                _CarPropertyView(
                                  title: '4 doors',
                                  asset: AppIcon.door,
                                ),
                                _CarPropertyView(
                                  title: 'A/C',
                                  asset: AppIcon.conditioner,
                                ),
                                _CarPropertyView(
                                  title: '5 passengers',
                                  asset: AppIcon.passenger,
                                ),
                                _CarPropertyView(
                                  title: 'Petrol',
                                  asset: AppIcon.petrol,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                6.verticalSpace,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 110.r,
                      child: Row(
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
                          ),
                        ],
                      ),
                    ),
                    12.horizontalSpace,
                    SvgPicture.asset(
                      AppIcon.tickCircle,
                      height: 16.r,
                      width: 16.r,
                    ),
                    6.horizontalSpace,
                    Text(
                      'Instant confirmation',
                      style: AppTextStyle.w400.copyWith(
                        fontSize: 12.sp,
                        color: AppColor.dark,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 56.h,
            padding: REdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColor.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2 458 000 UZS',
                      style: AppTextStyle.w600.copyWith(
                        fontSize: 16.sp,
                        color: AppColor.dark,
                      ),
                    ),
                    Text(
                      '12.04.2023 11:30 - 15.04.2023 12:45',
                      style: AppTextStyle.w400.copyWith(
                        fontSize: 10.sp,
                        color: AppColor.c677294,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 32.h,
                  width: 104.w,
                  child: PrimaryButton(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text('Book Again'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CarPropertyView extends StatelessWidget {
  final String asset;
  final String title;

  const _CarPropertyView({required this.asset, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.r,
      padding: EdgeInsets.symmetric(
        vertical: 4.r,
        horizontal: 8.r,
      ),
      margin: EdgeInsets.only(
        right: 8.w,
        bottom: 8.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.r),
        border: Border.all(
          color: AppColor.cF2F2F2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            asset,
            height: 16.r,
            width: 16.r,
          ),
          6.horizontalSpace,
          Text(
            title,
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
