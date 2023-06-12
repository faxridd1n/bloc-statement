import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

class SearchTextFormField extends StatelessWidget {
  final TextEditingController controller;
  TextEditingController? searchCarCtr;
  bool? isWriting;
  Function() ?setState;
  SearchTextFormField({
    super.key,
    required this.controller,
    this.isWriting,
    this.searchCarCtr,
    this.setState,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColor.cF2F2F2,
      ),
      child: TextFormField(
        onTap: () {
          if (isWriting != null) {
            isWriting = true;
            setState!();
          }
        },
        onTapOutside: (event) {
          if (isWriting != null) {
            isWriting = false;
            setState!();
          }
        },
        expands: true,
        maxLines: null,
        controller: controller,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 12.h,
          ),
          hintText: 'Search',
          hintStyle: AppTextStyle.w400
              .copyWith(fontSize: 16.sp, color: AppColor.c677294),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.r),
          ),
          prefixIcon: (isWriting != null && isWriting == true)
              ? IconButton(
                  icon: AppSvg.asset(AppIcon.arrowLeft),
                  onPressed: () {
                    searchCarCtr?.clear();
                    setState!();
                  },
                )
              : AppSvg.asset(
                  AppIcon.searchNormal,
                  height: 20.r,
                  width: 20.r,
                ),
          suffixIcon: (isWriting != null && isWriting == true)
              ? IconButton(
                  icon: AppSvg.asset(AppIcon.xlogo),
                  onPressed: () {
                    searchCarCtr?.clear();
                    setState!();
                  },
                )
              : null,
        ),
        style: AppTextStyle.w600
            .copyWith(fontSize: 16.sp, color: AppColor.c677294),
      ),
    );
  }
}
