import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../design_system/design_system.dart';

class TextButtonView extends StatefulWidget {
  const TextButtonView({super.key});

  @override
  State<TextButtonView> createState() => _TextButtonViewState();
}

class _TextButtonViewState extends State<TextButtonView> {
  bool isClicked = false;
  bool isClicked2 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Transmission'.tr(),style: AppTextStyle.w600.copyWith(
            fontSize: 14.sp,
            color: AppColor.dark,
          ),),
          8.verticalSpace,
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: (){
                    setState((){
                      isClicked = !isClicked;
                    });
                  },
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      border: Border.all(color: AppColor.cE2E2E2),
                      color: isClicked ? AppColor.primary : Colors.white,
                    ),
                    child: Center(
                      child: Text('Automatic'.tr(),
                        style: AppTextStyle.w400.copyWith(
                          fontSize: 16.sp,
                          color: AppColor.dark,
                        ),),
                    ),
                  ),
                ),),
              8.horizontalSpace,
              Expanded(
                child: InkWell(
                  onTap: (){
                    setState((){
                      isClicked2 = !isClicked2;
                    });
                  },
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      border: Border.all(color: AppColor.cE2E2E2),
                      color: isClicked2 ? AppColor.primary : Colors.white,
                    ),
                    child: Center(
                      child: Text('Mechanical',
                        style: AppTextStyle.w400.copyWith(
                          fontSize: 16.sp,
                          color: AppColor.dark,
                        ),),
                    ),
                  ),
                ),),
            ],
          )
        ],
      ),
    );
  }
}