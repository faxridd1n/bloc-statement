import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

class SearchSuccess extends StatelessWidget {
  const SearchSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Text(
                'Showing ${0} results',
                style: AppTextStyle.w600.copyWith(
                  color: AppColor.dark,
                  fontSize: 16,
                ),
              ).tr(),
            ),
            Padding(
              padding: EdgeInsets.all(15.w),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: CarDetails(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
    //nb=
  }
}
