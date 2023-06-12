import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../design_system/design_system.dart';

class VehicleInfoWidget extends StatelessWidget {
  const VehicleInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'No inform',
          style: AppTextStyle.w700.copyWith(
            fontSize: 25,
            color: AppColor.red,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 90.h,
        width: MediaQuery.of(context).size.width,
        padding: REdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.c8D8D8D.withOpacity(0.15),
              blurRadius: 12,
              offset: const Offset(0, -4), // changes position of shadow
            ),
          ],
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PrimaryButton.custom(
                background: AppColor.red,
                foreground: AppColor.white,
                  child: Text(
                    'Remove ad',
                    style: AppTextStyle.w500.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: (){},
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: PrimaryButton(
                  child: Text(
                    'Edit info',
                    style: AppTextStyle.w500.copyWith(
                      fontSize: 16,
                      color: AppColor.dark,
                    ),
                  ),
                  onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
