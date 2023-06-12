import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

class BodyBookingTimePage extends StatelessWidget {
  const BodyBookingTimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Text(
            'Select time',
            style: AppTextStyle.w600.copyWith(
              fontSize: 18.sp,
              color: AppColor.dark,
            ),
          ),
        ),
        12.verticalSpace,
        const _Body(),
        8.verticalSpace,
        const _Body(),
        12.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: PrimaryButton.transparent(
            onPressed: () {},
            maxWidth: double.infinity,
            minHeight: 36.h,
            borderColor: AppColor.c677294,
            child: Text(
              'Show all available times',
              style: AppTextStyle.w500.copyWith(
                fontSize: 14.sp,
                color: AppColor.c677294,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        itemCount: itemsTime.length,
        separatorBuilder: (BuildContext context, int index) {
          return 8.horizontalSpace;
        },
        itemBuilder: (BuildContext context, int index) {
          return _Card(time: itemsTime[index]);
        },
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      width: 86.w,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(
          color: AppColor.cE2E2E2,
          width: 0.8.w,
        ),
      ),
      child: Center(
        child: Text(
          time,
          style: AppTextStyle.w500.copyWith(
            fontSize: 16.sp,
            color: AppColor.dark,
          ),
        ),
      ),
    );
  }
}

List<String> itemsTime = [
  '00:00',
  '00:30',
  '01:00',
  '01:30',
  '02:00',
  '02:30',
  '03:00',
  '03:30',
  '04:00',
  '04:30',
  '05:00',
  '05:30',
  '06:00',
  '06:30',
  '07:00',
  '07:30',
  '08:00',
  '08:30',
  '09:00',
  '09:30',
  '10:00',
  '10:30',
  '11:00',
  '11:30',
  '12:00',
  '12:30',
  '13:00',
  '13:30',
  '14:00',
  '14:30',
  '15:00',
  '15:30',
  '16:00',
  '16:30',
  '17:00',
  '17:30',
  '18:00',
  '18:30',
  '19:00',
  '19:30',
  '20:00',
  '20:30',
  '21:00',
  '21:30',
  '22:00',
  '22:30',
  '23:00',
  '23:30',
];
