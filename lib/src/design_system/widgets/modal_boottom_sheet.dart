import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/palette.dart';



modalBottomSheet({required BuildContext context, required Widget widget}){
  return showModalBottomSheet(
      backgroundColor: AppColor.transparent,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.r),
            topLeft: Radius.circular(25.r)),
      ),
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 4.h,
                width: 40.w,
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColor.white,
                ),

              ),
              8.verticalSpace,
              Container(
                // height:  MediaQuery.of(context).size.height * 0.9,
                 padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.r),
                      topLeft: Radius.circular(25.r),
                    )
                ),
                child: widget,
              ),
            ],
          ),
        );
      });
}

