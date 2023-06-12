import 'package:flutter/material.dart';
import '../../../../design_system/design_system.dart';
import 'components/calendar.dart';
import 'components/location_booking_time_page.dart';

class BookingTimePage extends StatefulWidget {
  const BookingTimePage({super.key});
//nb=
  @override
  State<BookingTimePage> createState() => _BookingTimePageState();
}

class _BookingTimePageState extends State<BookingTimePage> {
  double startTime = 0;
  double endTime = 24;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        appBar: const MyAppBar(
          title: 'Booking time',
        ),
        // backgroundColor: AppColor.white,
        // body: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     HeadBookingTimePage(
        //       date: DateTime.now(),
        //     ),
        //     20.verticalSpace,
        //     const BodyBookingTimePage(),
        //   24.verticalSpace,
        //   const LocationBookingtimePage(),
        // ],
        // ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 12.h,
                      left: 16.w,
                      right: 16.w,
                      bottom: 29.h,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 47.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Thu,Apr 17',
                                    style: AppTextStyle.w600.copyWith(
                                      fontSize: 18,
                                      color: AppColor.dark,
                                    ),
                                  ),
                                  6.verticalSpace,
                                  Text(
                                    '10:00',
                                    style: AppTextStyle.w400.copyWith(
                                      fontSize: 16,
                                      color: AppColor.dark,
                                    ),
                                  )
                                ],
                              ),
                              AppSvg.asset(AppIcon.bookingTime),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Thu,Apr 23',
                                    style: AppTextStyle.w600.copyWith(
                                      fontSize: 18,
                                      color: AppColor.dark,
                                    ),
                                  ),
                                  6.verticalSpace,
                                  Text(
                                    '19:00',
                                    style: AppTextStyle.w400.copyWith(
                                      fontSize: 16,
                                      color: AppColor.dark,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        12.verticalSpace,
                        SizedBox(
                          height: 330.h,
                          width: double.infinity,
                          child: CalendarWidget(),
                        ),
                        28.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Select time',
                              style: AppTextStyle.w600.copyWith(
                                fontSize: 18,
                                color: AppColor.dark,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Start time',
                              style: AppTextStyle.w500.copyWith(
                                fontSize: 14,
                                color: AppColor.dark,
                              ),
                            ),
                            12.horizontalSpace,
                            Expanded(
                              child:
                                  // SfDateRangePicker(
                                  //   controller: _dateCtr,
                                  //   view: DateRangePickerView.month,
                                  //   selectionMode:
                                  //       DateRangePickerSelectionMode.multiRange,
                                  //   headerHeight: 100,
                                  //   showActionButtons: true,

                                  //   showNavigationArrow: true,
                                  //   onCancel: () {
                                  //     _dateCtr.selectedDates=[];
                                  //   },
                                  //   onSubmit: (p0) {},
                                  // ),
                                  SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  trackHeight: 6,
                                  valueIndicatorColor: AppColor.primary,
                                  valueIndicatorTextStyle:
                                      AppTextStyle.w400.copyWith(
                                    color: AppColor.dark,
                                    fontSize: 14,
                                  ),
                                ),
                                child: Slider(
                                  divisions: 24,
                                  min: 0,
                                  max: 24,                                 
                                   label: '${startTime.toInt().toString()}:00',
                                  thumbColor: AppColor.primary,
                                  inactiveColor: AppColor.primary,
                                  activeColor: AppColor.cE2E2E2,
                                  value: startTime,
                                  onChanged: (value) {
                                    startTime = value;
                                    setState(() {});
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                        16.verticalSpace,
                        Row(
                          children: [
                            Text(
                              'End time',
                              style: AppTextStyle.w500.copyWith(
                                fontSize: 14,
                                color: AppColor.dark,
                              ),
                            ),
                            12.horizontalSpace,
                            Expanded(
                              child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  trackHeight: 5,
                                    valueIndicatorColor: AppColor.primary,
                                    valueIndicatorTextStyle:
                                        AppTextStyle.w400.copyWith(
                                      color: AppColor.dark,
                                      fontSize: 14,
                                    )),
                                child: Slider(
                                  divisions: 24,
                                  min: 0,
                                  max: 24,
                                  label: '${endTime.toInt().toString()}:00',
                                  activeColor: AppColor.primary,
                                  inactiveColor: AppColor.cE2E2E2,
                                  value: endTime,
                                  onChanged: (value) {
                                    endTime = value;
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        24.verticalSpace,
                      ],
                    ),
                  ),
                  const LocationBookingtimePage(),
                  (MediaQuery.of(context).size.height * 0.15).verticalSpace,
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height.h - 200.h,
              ),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 15.0.r, // changes position of shadow
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                height: 120.h,
                child: ColoredBox(
                  color: AppColor.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 16.0, bottom: 36, left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '900 000 UZS/day',
                                  style: AppTextStyle.w600.copyWith(
                                    fontSize: 16.sp,
                                    color: AppColor.dark,
                                  ),
                                ),
                                Text(
                                  "4 500 000 UZS in total",
                                  style: AppTextStyle.w400.copyWith(
                                    fontSize: 14.sp,
                                    color: AppColor.c677294,
                                  ),
                                )
                              ]),
                        ),
                        8.horizontalSpace,
                        Expanded(
                          child: PrimaryButton(
                            minHeight: 50.h,
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   // MaterialPageRoute(
                              //   //   builder: (context) {
                              //   //     return const AddVehicleDocumentsPage();
                              //   //   },
                              //   // ),
                              // );
                            },
                            child: Text('Continue'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
