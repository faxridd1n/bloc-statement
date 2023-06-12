import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';
import '../colors/palette.dart';

class AppCalendar extends StatelessWidget {
  const AppCalendar({
    super.key,
    required this.comment,
    required this.hint,
  });

  final String hint;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
      ),
      title: SizedBox(
        height: 60.h,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: SvgPicture.asset(
                    AppIcon.xlogo,
                    height: 32.h,
                    width: 32.h,
                    color: AppColor.dark,
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                'Select Date',
                style: AppTextStyle.w600.copyWith(
                    fontSize: 24.sp,
                    color: AppColor.dark
                ),
              ),
            ),
          ],
        ),
      ),
      content: SizedBox(
        height: 510.h,
        width: 500.w,
        child: CalendarDialog(),
      ),
    );
  }
}

class CalendarDialog extends StatelessWidget {
  CalendarDialog({
    super.key,
  });

  late CalendarCarousel _calendarCarouselNoHeader ;

  @override
  Widget build(BuildContext context) {
    _calendarCarouselNoHeader = CalendarCarousel(
      weekdayTextStyle: AppTextStyle.w400.copyWith(
          color: AppColor.black.withOpacity(0.38),
          fontSize: 15.sp
      ),
      daysTextStyle: AppTextStyle.w400.copyWith(
          color: AppColor.black.withOpacity(0.38),
          fontSize: 15.sp
      ),
      todayTextStyle: AppTextStyle.w400.copyWith(
          color: AppColor.black.withOpacity(0.38),
          fontSize: 15.sp
      ),
      todayBorderColor: Colors.transparent,
      todayButtonColor: AppColor.white,
      height: 430.h,
      prevDaysTextStyle: AppTextStyle.w400.copyWith(
          color: AppColor.black.withOpacity(0.38),
          fontSize: 15.sp
      ),
      nextDaysTextStyle: AppTextStyle.w400.copyWith(
          color: AppColor.black.withOpacity(0.38),
          fontSize: 15.sp
      ),
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      selectedDayBorderColor: AppColor.c677294,
      selectedDayButtonColor: AppColor.c677294,
      selectedDayTextStyle: AppTextStyle.w600.copyWith(
          color: AppColor.black,
          fontSize: 15.sp
      ),
      iconColor: AppColor.black,
      weekendTextStyle: AppTextStyle.w400.copyWith(
          color: AppColor.black.withOpacity(0.38),
          fontSize: 15.sp
      ),
      headerTextStyle: AppTextStyle.w400.copyWith(
          color: AppColor.black.withOpacity(0.38),
          fontSize: 15.sp
      ),
      headerMargin: EdgeInsets.zero,
      firstDayOfWeek: DateTime.monday,
      //locale: 'uz',
    );
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 430.h,
            width: double.infinity,
            child: SingleChildScrollView(
              child: _calendarCarouselNoHeader,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
            ),
            child: PrimaryButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text(
                  'select',
                style: AppTextStyle.w500.copyWith(
                  color: AppColor.dark,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



