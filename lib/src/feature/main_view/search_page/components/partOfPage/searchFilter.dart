import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';
import 'package:u_rent_demo/src/feature/main_view/search_page/components/Widgets/bottomSheetWidget.dart';
import 'package:u_rent_demo/src/feature/main_view/search_page/components/widgets/filter_info_widget.dart';
import 'package:u_rent_demo/src/feature/main_view/search_page/components/widgets/filter_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class SearchFilter extends StatelessWidget {
  Function() setState;
  TextEditingController searchCarCtr;
  bool isExist;
  bool automatic;
  bool mechanical;
  SearchFilter(this.setState, this.isExist, this.searchCarCtr, this.automatic,
      this.mechanical,
      {super.key});

//nb=
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColor.white, boxShadow: [
        BoxShadow(
          blurRadius: 20,
          color: AppColor.black.withOpacity(0.08),
        )
      ]),
      child: Padding(
        padding: REdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Column(
          children: [
            FilterInfoWidget(
              'Tashkent city',
              AppSvg.asset(AppIcon.location_search),
              true,
            ),
            12.verticalSpace,
            FilterInfoWidget(
              'Wed, Apr 20',
              AppSvg.asset(AppIcon.calendar),
              false,
            ),
            12.verticalSpace,
            FilterInfoWidget(
              'Thu, Apr 21',
              AppSvg.asset(AppIcon.calendar),
              false,
            ),
            12.verticalSpace,
            FilterButtonWidget(
              () {
                openFilterSheet(
                  context,
                  40000,
                  500000,
                  mechanical,
                  automatic,
                );
              },
            ),
            12.verticalSpace,
            PrimaryButton(
              onPressed: () {
                searchCarCtr.text.toLowerCase() == 'mercedes'
                    ? isExist = true
                    : isExist = false;

                setState();
              },
              minHeight: 44.h,
              maxWidth: double.infinity,
              child: Text(
                'Search',
                style: AppTextStyle.w500.copyWith(
                  color: AppColor.dark,
                  fontSize: 16,
                ),
              ).tr(),
            )
          ],
        ),
      ),
    );
  }
}
