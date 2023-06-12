
//nb=
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

class CalendarWidget extends StatelessWidget {
  CalendarWidget({
    super.key,
  });

  late CalendarCarousel _calendarCarouselNoHeader ;

  @override
  Widget build(BuildContext context) {
    _calendarCarouselNoHeader = CalendarCarousel(
      weekdayTextStyle: AppTextStyle.w500.copyWith(
          color: AppColor.c677294,
          fontSize: 14.sp
      ),
      daysTextStyle: AppTextStyle.w400.copyWith(
          color: AppColor.dark,
          fontSize: 16.sp
      ),
      todayTextStyle: AppTextStyle.w400.copyWith(
          color: AppColor.dark,
          fontSize: 16.sp
      ),
      todayBorderColor: Colors.transparent,
      todayButtonColor: AppColor.white,
      height: 430.h,
      prevDaysTextStyle: AppTextStyle.w400.copyWith(
          color: AppColor.dark,
          fontSize: 15.sp
      ),
      nextDaysTextStyle: AppTextStyle.w400.copyWith(
          color: AppColor.dark,
          fontSize: 15.sp
      ),
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      selectedDayBorderColor: AppColor.primary,
      selectedDayButtonColor: AppColor.primary,
      selectedDayTextStyle: AppTextStyle.w600.copyWith(
          color: AppColor.dark,
          fontSize: 15.sp
      ),
      iconColor: AppColor.black,
      weekendTextStyle: AppTextStyle.w400.copyWith(
          color: AppColor.dark,
          fontSize: 15.sp
      ),
      headerTextStyle: AppTextStyle.w600.copyWith(
          color: AppColor.dark,
          fontSize: 20.sp
      ),
      headerMargin: EdgeInsets.zero,
      firstDayOfWeek: DateTime.monday,
      //locale: 'uz',
    );
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SizedBox(
        height: 430.h,
        width: double.infinity,
        child: _calendarCarouselNoHeader,
      ),
    );
  }
}
