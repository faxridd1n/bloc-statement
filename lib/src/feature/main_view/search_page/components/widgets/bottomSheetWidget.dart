import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';
import 'package:u_rent_demo/src/design_system/widgets/custom_drop_down.dart';
import 'package:u_rent_demo/src/feature/main_view/search_page/components/utils/lists.dart';
import 'package:easy_localization/easy_localization.dart';

//nb=
void openFilterSheet(
  BuildContext context,
  double minPrice,
  double maxPrice,
  bool mechanical,
  bool automatic,
) {
  RangeValues values = RangeValues(minPrice, maxPrice);
  RangeLabels labels = const RangeLabels('start', 'end');

  showModalBottomSheet<void>(
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) => Column(
          children: [
            const Spacer(),
            Stack(
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    height: MediaQuery.of(context).size.height -
                        (kTextTabBarHeight),
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 32.h,
                            right: 22.w,
                            left: 22.w,
                            bottom: 32.h,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Filter & Sort',
                                  style: AppTextStyle.w700.copyWith(
                                    color: AppColor.dark,
                                    fontSize: 22,
                                  ),
                                ).tr(),
                              ),
                              24.verticalSpace,
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height.h * 0.7,
                                child: SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Price',
                                        style: AppTextStyle.w600.copyWith(
                                          color: AppColor.dark,
                                          fontSize: 14,
                                        ),
                                      ).tr(),
                                      16.verticalSpace,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${minPrice} UZS',
                                            style: AppTextStyle.w500.copyWith(
                                              color: AppColor.dark,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            '${maxPrice} UZS',
                                            style: AppTextStyle.w500.copyWith(
                                              color: AppColor.dark,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),

                                      //nb=
                                      SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                            valueIndicatorColor:
                                                AppColor.primary,
                                            valueIndicatorTextStyle:
                                                AppTextStyle.w400.copyWith(
                                              color: AppColor.dark,
                                              fontSize: 14,
                                            )),
                                        child: RangeSlider(
                                          activeColor: AppColor.primary,
                                          inactiveColor: AppColor.cE2E2E2,
                                          min: minPrice,
                                          max: maxPrice,
                                          labels: labels,
                                          divisions: 100,
                                          values: values,
                                          onChanged: (value) {
                                            values = value;
                                            setState(() {});
                                          },
                                        ),
                                      ),

                                      15.verticalSpace,
                                      CustomDropDown(
                                        title: 'Car brands'.tr(),
                                        items: allbrands,
                                        label: dropdownvalue[0],
                                      ),

                                      24.verticalSpace,
                                      CustomDropDown(
                                        title: 'Car mark'.tr(),
                                        items: allmarks,
                                        label: dropdownvalue[1],
                                      ),

                                      24.verticalSpace,
                                      Text(
                                        'Transmission',
                                        style: AppTextStyle.w600.copyWith(
                                          color: AppColor.dark,
                                          fontSize: 14,
                                        ),
                                      ).tr(),
                                      8.verticalSpace,
                                      Row(
                                        children: [
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                automatic = true;
                                                mechanical = false;
                                                setState(() {});
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: automatic
                                                        ? AppColor.primary
                                                        : AppColor.cE2E2E2,
                                                    width: 1.w,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: automatic
                                                        ? AppColor.primary
                                                        : AppColor.white,
                                                ),
                                                height: 50.h,
                                                child: Center(
                                                  child: Text(
                                                    'Automatic',
                                                    style: AppTextStyle.w400
                                                        .copyWith(
                                                      color: AppColor.dark,
                                                      fontSize: 16,
                                                    ),
                                                  ).tr(),
                                                ),
                                              ),
                                            ),
                                          ),
                                          8.horizontalSpace,
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                mechanical = true;
                                                automatic = false;
                                                setState(() {});
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: mechanical
                                                        ? AppColor.primary
                                                        : AppColor.cE2E2E2,
                                                    width: 1.w,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color:mechanical
                                                        ? AppColor.primary
                                                        : AppColor.white,
                                                ),
                                                height: 50.h,
                                                child: Center(
                                                  child: const Text(
                                                    'Mechanical',
                                                  ).tr(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          24.verticalSpace,
                                          CustomDropDown(
                                            title: 'Fuel type'.tr(),
                                            items: petrol,
                                            label: dropdownvalue[2],
                                          ),
                                          24.verticalSpace,
                                          CustomDropDown(
                                            title: 'Color'.tr(),
                                            items: allcolors,
                                            label: dropdownvalue[3],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              24.verticalSpace,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      child: PrimaryButton.transparent(
                                        borderColor: AppColor.cE2E2E2,
                                        
                                    minHeight: 50,
                                    child: Text(
                                      'Reset',
                                      style: AppTextStyle.w500.copyWith(
                                        color: AppColor.c677294,
                                        fontSize: 16,
                                      ),
                                    ).tr(),
                                    onPressed: () {},
                                  )
                                      //  ElevatedButton(
                                      //   style: ElevatedButton.styleFrom(
                                      //     elevation: 0,
                                      //     backgroundColor: AppColor.white,
                                      //     shape: RoundedRectangleBorder(
                                      //       borderRadius:
                                      //           BorderRadius.circular(4.r),
                                      //       side: const BorderSide(
                                      //         color: AppColor.cE2E2E2,
                                      //       ),
                                      //     ),
                                      //   ),
                                      //   onPressed: () {},
                                      //   child: SizedBox(
                                      //     height: 50,
                                      //     child: Center(
                                      //       child:
                                      //     ),
                                      //   ),
                                      // ),
                                      ),
                                  8.horizontalSpace,
                                  Expanded(
                                      child: PrimaryButton(
                                    minHeight: 50,
                                    child: Text(
                                      'Show',
                                      style: AppTextStyle.w500.copyWith(
                                        color: AppColor.dark,
                                        fontSize: 16,
                                      ),
                                    ).tr(),
                                    onPressed: () {

                                    },
                                  )
                                      //  ElevatedButton(
                                      //   style: ElevatedButton.styleFrom(
                                      //     elevation: 0,
                                      //     backgroundColor: AppColor.primary,
                                      //     shape: RoundedRectangleBorder(
                                      //       borderRadius:
                                      //           BorderRadius.circular(4.r),
                                      //     ),
                                      //   ),
                                      //   onPressed: () {},
                                      //   child: SizedBox(
                                      //     height: 50,
                                      //     child: Center(
                                      //       child:
                                      //     ),
                                      //   ),
                                      // ),
                                      ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 1,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 36.w,
                        height: 4.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.1001000, size.height * 0.0021096);
    path0.cubicTo(
        size.width * 0.3340500,
        size.height * 0.0014110,
        size.width * 0.3132750,
        size.height * 0.0011781,
        size.width * 0.4220250,
        size.height * 0.0011781);
    path0.cubicTo(
        size.width * 0.4455000,
        size.height * 0.0023836,
        size.width * 0.4292250,
        size.height * 0.0114521,
        size.width * 0.4529000,
        size.height * 0.0148767);
    path0.cubicTo(
        size.width * 0.4710250,
        size.height * 0.0148767,
        size.width * 0.5284750,
        size.height * 0.0148767,
        size.width * 0.5455250,
        size.height * 0.0148767);
    path0.cubicTo(
        size.width * 0.5684000,
        size.height * 0.0106301,
        size.width * 0.5533000,
        size.height * 0.0038493,
        size.width * 0.5740250,
        size.height * 0.0010411);
    path0.cubicTo(
        size.width * 0.6865250,
        size.height * 0.0010411,
        size.width * 0.8233000,
        size.height * 0.0018493,
        size.width * 0.9013750,
        size.height * 0.0021096);
    path0.quadraticBezierTo(size.width * 1.0052500, size.height * 0.0030685,
        size.width, size.height * 0.0429178);
    path0.lineTo(size.width, size.height * 0.9987123);
    path0.lineTo(0, size.height * 1.0001644);
    path0.lineTo(0, size.height * 0.0427260);
    path0.quadraticBezierTo(size.width * -0.0071500, size.height * 0.0020548,
        size.width * 0.1001000, size.height * 0.0021096);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
