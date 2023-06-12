import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

import '../../../../../../domain/data/models/home/car_details/car_details_model.dart';

class BudyCarData extends StatelessWidget {
  CarDetailModel model;
  BudyCarData(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _DetailsCarData(),
          16.verticalSpace,
           _DescriptionCarData(model),
          16.verticalSpace,
          const _SpecificationsCarData(),
          24.verticalSpace,
          const _LessorCarData(),
          28.5.verticalSpace,
        ],
      ),
    );
  }
}

class _DetailsCarData extends StatelessWidget {
  const _DetailsCarData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'GLA 250 SUV 2022',
          style: AppTextStyle.w600.copyWith(
            fontSize: 24.sp,
            color: AppColor.dark,
          ),
        ),
        4.verticalSpace,
        Text(
          'Mercedes-Benz',
          style: AppTextStyle.w400.copyWith(
            fontSize: 16.sp,
            color: AppColor.c677294,
          ),
        ),
        8.verticalSpace,
        Text(
          '900 000 UZS',
          style: AppTextStyle.w600.copyWith(
            fontSize: 20.sp,
            color: AppColor.dark,
          ),
        ),
        16.verticalSpace,
        Wrap(
          spacing: 4,
          runSpacing: 8,
          children: [
            CarPropertyView(
              title: 'A/T',
              asset: AppIcon.extension,
              height: 36.h,
              fontSize: 14.sp,
              iconSize: 20.sp,
            ),
            CarPropertyView(
              title: '4 doors',
              asset: AppIcon.door,
              height: 36.h,
              fontSize: 14.sp,
              iconSize: 20.sp,
            ),
            CarPropertyView(
              title: 'A/C',
              asset: AppIcon.conditioner,
              height: 36.h,
              fontSize: 14.sp,
              iconSize: 20.sp,
            ),
            CarPropertyView(
              title: '5 passengers',
              asset: AppIcon.passenger,
              height: 36.h,
              fontSize: 14.sp,
              iconSize: 20.sp,
            ),
            CarPropertyView(
              title: 'Petrol',
              asset: AppIcon.petrol,
              height: 36.h,
              fontSize: 14.sp,
              iconSize: 20.sp,
            ),
          ],
        ),
      ],
    );
  }
}

class _DescriptionCarData extends StatelessWidget {
  CarDetailModel model;
   _DescriptionCarData(this.model,{super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: AppTextStyle.w600.copyWith(
            fontSize: 16.sp,
            color: AppColor.c1A0700,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            model.toString(),
            style: AppTextStyle.w400.copyWith(
              fontSize: 14.sp,
              color: AppColor.dark,
            ),
          ),
        ),
      ],
    );
  }
}

class _SpecificationsCarData extends StatelessWidget {
  const _SpecificationsCarData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Specifications',
          style: AppTextStyle.w600.copyWith(
            fontSize: 16.sp,
            color: AppColor.c1A0700,
          ),
        ),
        12.verticalSpace,
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 9,
          separatorBuilder: (BuildContext context, int index) {
            return 8.verticalSpace;
          },
          itemBuilder: (BuildContext context, int index) {
            return const _SpecificationsCard(
              specificationsKey: 'Motor power',
              specificationsValue: '221 hp @ 5,500 rpm',
            );
          },
        )
      ],
    );
  }
}

class _SpecificationsCard extends StatelessWidget {
  const _SpecificationsCard({
    super.key,
    required this.specificationsKey,
    required this.specificationsValue,
  });

  final String specificationsKey;
  final String specificationsValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          specificationsKey,
          style: AppTextStyle.w400.copyWith(
            fontSize: 14.sp,
            color: AppColor.c677294,
          ),
        ),
        Text(
          specificationsValue,
          style: AppTextStyle.w500.copyWith(
            fontSize: 14.sp,
            color: AppColor.c181815,
          ),
        ),
      ],
    );
  }
}

class _LessorCarData extends StatelessWidget {
  const _LessorCarData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Lessor',
          style: AppTextStyle.w600.copyWith(
            fontSize: 16.sp,
            color: AppColor.c1A0700,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 48.r,
                  width: 48.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.r),
                    color: AppColor.cE2E2E2,
                    image: const DecorationImage(
                      image: AssetImage(
                        '',
                      ),
                    ),
                  ),
                ),
                12.horizontalSpace,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cameron Williamson',
                      style: AppTextStyle.w600.copyWith(
                        fontSize: 16.sp,
                        color: AppColor.dark,
                      ),
                    ),
                    4.verticalSpace,
                    Text(
                      '+998 99 777 88 99',
                      style: AppTextStyle.w400.copyWith(
                        fontSize: 14.sp,
                        color: AppColor.c677294,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            PrimaryButton(
              onPressed: () {},
              maxWidth: 108.w,
              minHeight: 28.h,
              child: Text(
                'Contact now',
                style: AppTextStyle.w500.copyWith(
                  fontSize: 14.sp,
                  color: AppColor.blue,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
