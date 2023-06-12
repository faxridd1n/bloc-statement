import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';
import 'package:easy_localization/easy_localization.dart';
class Searchnone extends StatelessWidget {
  TextEditingController searchCarCtr;
  // bool isExist;
  // void Function() setState;
  Searchnone(this.searchCarCtr,{super.key});

//nb=
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Text(
                'Showing ${searchCarCtr.text} results',
                style: AppTextStyle.w600.copyWith(
                  color: AppColor.dark,
                  fontSize: 16,
                ),
              ).tr(),
            ),
            SizedBox(
              height: 106.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width.w,
              child: Center(
                child: CircleAvatar(
                  radius: 60.r,
                  backgroundColor: AppColor.searchbg1,
                  child: Center(
                    child: CircleAvatar(
                      radius: 48,
                      backgroundColor: AppColor.searchbg2,
                      child: Center(
                        child: AppSvg.asset(
                          AppIcon.searchStatus,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 54.w,
              ),
              child: Column(
                children: [
                  Text(
                    'No Results Found for "${searchCarCtr.text}"',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.w600.copyWith(
                      color: AppColor.dark,
                      fontSize: 24,
                    ),
                  ).tr(),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'Try shortening or rephrasing your search and try again',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.w400.copyWith(
                      color: AppColor.c677294,
                      fontSize: 16,
                    ),
                  ).tr(),
                  SizedBox(
                    height: 32.h,
                  ),
                  PrimaryButton(
                    onPressed: () {},
                    minHeight: 44.h,
                    maxWidth: double.infinity,
                    child: const Text('Try Again').tr(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
