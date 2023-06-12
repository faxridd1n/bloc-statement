import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

import '../../../../../design_system/constants/show_modal.dart';
import '../../../../../design_system/widgets/calendar.dart';

class HeadBookingTimePage extends StatelessWidget {
  HeadBookingTimePage({
    super.key,
    required this.date,
  });

  final DateTime date;

  final isCalendar = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      child: ValueListenableBuilder(
        valueListenable: isCalendar,
        builder: (context, count, _){
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _ConvertDateTime(
                    date: date,
                  ),
                  InkWell(
                    onTap: (){
                      modalDialog(
                          context: context,
                          widget: AppCalendar(
                            comment: '1012',
                          hint: "8548787",
                          )
                      );
                      //isCalendar.value = !isCalendar.value;
                    },
                    child: Container(
                      height: 48.r,
                      width: 48.r,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: AppColor.cF2F2F2
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          isCalendar.value
                              ? AppIcon.daily
                              : AppIcon.calendar,
                          height: 24.r,
                          width: 24.r,
                          color: AppColor.dark,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              16.verticalSpace,

            ],
          );
        },
      ),
    );
  }
}

class _ConvertDateTime extends StatelessWidget {
  const _ConvertDateTime({
    required this.date,
});

  final DateTime date;

  String _convertDate(DateTime date){
    final String day = date.day.toString();
    final String year = date.year.toString();

    switch (date.month){
      case 1 :
        return 'January $day, $year';
      case 2 :
        return 'February $day, $year';
      case 3 :
        return 'March $day, $year';
      case 4 :
        return 'April $day, $year';
      case 5 :
        return 'May $day, $year';
      case 6 :
        return 'June $day, $year';
      case 7 :
        return 'July $day, $year';
      case 8 :
        return 'August $day, $year';
      case 9 :
        return 'September $day, $year';
      case 10 :
        return 'October $day, $year';
      case 11 :
        return 'November $day, $year';
      case 12 :
        return 'December $day, $year';
    }
    return '';
  }

  String _convertWeekday(DateTime date){
    switch (date.weekday){
      case 1 :
        return 'Monday';
      case 2 :
        return 'Tuesday';
      case 3 :
        return 'Wednesday';
      case 4 :
        return 'Thursday';
      case 5 :
        return 'Friday';
      case 6 :
        return 'Saturday';
      case 7 :
        return 'Sunday';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _convertDate(date),
          style: AppTextStyle.w600.copyWith(
              fontSize: 18.sp,
              color: AppColor.dark,
          ),
        ),
        4.verticalSpace,
        Text(
          _convertWeekday(date),
          style: AppTextStyle.w400.copyWith(
            fontSize: 16.sp,
            color: AppColor.dark,
          ),
        ),
      ],
    );
  }
}

// class _DailyCalendar extends StatelessWidget {
//   const _DailyCalendar({
//     required this.date,
// });
//
//   final DateTime date;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       padding: EdgeInsets.symmetric(
//         horizontal: 16.w,
//         vertical: 16.h,
//       ),
//       scrollDirection: Axis.horizontal,
//       itemCount: date.month.,
//     );
//   }
// }



