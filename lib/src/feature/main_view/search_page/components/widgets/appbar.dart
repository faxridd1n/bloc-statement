import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';
import 'package:u_rent_demo/src/feature/main_view/search_page/components/widgets/bottomSheetWidget.dart';

//nb=
class AppBarWidget extends StatelessWidget {
  TextEditingController searchCarCtr;
  bool isWriting;
  Function() setState;
  bool automatic;
  bool mechanical;
  AppBarWidget(this.isWriting, this.searchCarCtr, this.setState, this.automatic,
      this.mechanical,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 44.h,
              child: TextFormField(
                style: AppTextStyle.w400.copyWith(
                  color: AppColor.dark,
                  fontSize: 16,
                ),
                textAlignVertical: TextAlignVertical.bottom,
                cursorWidth: 1.5.w,
                cursorHeight: 20.h,
                controller: searchCarCtr,
                onFieldSubmitted: (value) {},
                onChanged: (value) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.r),
                    ),
                  ),
                  filled: true,
                  fillColor: AppColor.cF2F2F2,
                  prefixIcon: searchCarCtr.text.isNotEmpty
                      ? IconButton(
                          onPressed: () {
                            searchCarCtr.clear();
                            setState();
                          },
                          icon: AppSvg.asset(AppIcon.arrowLeft),
                          color: AppColor.black,
                          iconSize: 20,
                        )
                      : IconButton(
                          onPressed: () {},
                          icon: AppSvg.asset(AppIcon.searchNormal),
                          color: AppColor.black,
                          iconSize: 20,
                        ),
                  suffixIcon: searchCarCtr.text.isNotEmpty
                      ? IconButton(
                          onPressed: () {
                            searchCarCtr.clear();
                          },
                          icon: AppSvg.asset(AppIcon.xlogo),
                        )
                      : null,
                  suffixIconColor: AppColor.c677294,
                  hintText: 'Search',
                  hintStyle: AppTextStyle.w400.copyWith(
                    fontSize: 16,
                    color: AppColor.c677294,
                  ),
                ),
              ),
            ),
          ),
          searchCarCtr.text.isNotEmpty ? 12.horizontalSpace : 0.horizontalSpace,
          searchCarCtr.text.isNotEmpty
              ? GestureDetector(
                  onTap: () {
                    openFilterSheet(
                      context,
                      40000,
                      500000,
                      mechanical,
                      automatic,
                    );
                  },
                  child: SizedBox(
                    height: 44.h,
                    width: 44.h,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: AppColor.cF2F2F2,
                      ),
                      child: Center(
                        child: AppSvg.asset(
                          AppIcon.settingSearch,
                        ),
                      ),
                    ),
                  ),
                )
              : 0.verticalSpace,
        ],
      ),
    );
  }
}
