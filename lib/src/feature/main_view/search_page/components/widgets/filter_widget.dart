import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';
//nb=B
class FilterButtonWidget extends StatelessWidget {
  void Function() onTap;
   FilterButtonWidget(this.onTap,{super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
    
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.r),
      ),
        backgroundColor: AppColor.cF2F2F2,
    ),
    onPressed: () {
      onTap();
    },
    child: SizedBox(
      
      height: 44.h,
      width: double.infinity,
      child: Center(
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppSvg.asset(AppIcon.setting),
             SizedBox(
              width: 10.w,
            ),
             Text(
              'Filter & Sort',
              style: AppTextStyle.w500.copyWith(
                color: AppColor.dark,
                fontSize: 16,
              ),
            ).tr(),
          ],
        ),
     
      ),
    ),
  );
  
  }
}
