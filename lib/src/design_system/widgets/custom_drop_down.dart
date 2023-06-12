import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../colors/palette.dart';
import '../design_system.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({
    super.key,
    this.title,
    required this.label,
    this.width,
    this.selectedItem,
    required this.items,
    //this.onTap,
  });

  final String? title;
  final String label;
  final double? width;
  final List<String>? selectedItem;
  final List<String> items;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  late List<String> items;
  //String? ;

  final selectedItem = ValueNotifier<String>('');

  @override
  Widget build(BuildContext context) {
    items = widget.items;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title??'',
          style: AppTextStyle.w500
              .copyWith(fontSize: 14.sp, color: AppColor.dark),
        ),
        8.verticalSpace,
        Container(
          height: 48.h,
          width: widget.width ?? 360.w,
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(
              color: AppColor.cE2E2E2,
              width: 1.w,
            ),
          ),
          child: ValueListenableBuilder(
            valueListenable: selectedItem,
            builder: (context, count, _){
              return Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.r,
                ),
                width: widget.width ?? 313.w,
                height: 40.h,
                child: DropdownButton2(
                  hint: selectedItem.value.isEmpty
                      ? Text(
                    widget.label,
                    style: AppTextStyle.w400.copyWith(
                        fontSize: 16.sp,
                        color: AppColor.dark
                    ),
                  )
                      : SizedBox(
                    height: 24.h,
                    width: widget.width ?? 282.w,
                    child: Text(
                      selectedItem.value,
                      style: AppTextStyle.w400.copyWith(
                          fontSize: 16.sp,
                          color: AppColor.dark
                      ),
                    ),
                  ),
                  dropdownStyleData: DropdownStyleData(
                    maxHeight: 208,
                    width: widget.width ?? 346.w,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 13.r,
                            spreadRadius: 0.r,
                            offset: Offset(0.sp, 10.sp),
                            color: AppColor.gray.withOpacity(0.05),
                          )
                        ],
                        borderRadius: BorderRadius.circular(4.r),
                        color: AppColor.white,
                        border: Border.all(
                          color: AppColor.cE2E2E2,
                          width: 1.w,
                        )),
                    elevation: 0,
                    offset: Offset(-17.sp, 0.sp),
                    scrollbarTheme: ScrollbarThemeData(
                      thickness: MaterialStatePropertyAll(0.5.r),
                      thumbColor: const MaterialStatePropertyAll(
                        AppColor.gray,
                      ),
                    ),
                  ),
                  iconStyleData: IconStyleData(
                      icon: SvgPicture.asset(
                        AppIcon.arrowDown,
                        height: 20.h,
                        width: 20.h,
                      )),
                  menuItemStyleData: MenuItemStyleData(
                    height: 50.h,
                  ),
                  items: widget.items.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      enabled: false,
                      child: StatefulBuilder(
                        builder: (context, menuSetState) {
                          return InkWell(
                            onTap: () {
                              selectedItem.value = item;
                              Navigator.pop(context);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 45.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.w,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          item,
                                          style: AppTextStyle.w400.copyWith(
                                              fontSize: 18.sp,
                                              color: AppColor.dark
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1.h,
                                  color: item == widget.items.last
                                      ? Colors.transparent
                                      : AppColor.white,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  }).toList(),
                  isExpanded: true,
                  onChanged: (value) {},
                  underline: const SizedBox(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
