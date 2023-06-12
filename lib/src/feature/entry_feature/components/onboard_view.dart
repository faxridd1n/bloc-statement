import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

class OnboardView extends StatelessWidget {
  final String backgroundAsset;
  final String title;
  final String subtitle;
  final String topButtonTitle;
  final VoidCallback onTopButtonPressed;
  final String bottomButtonTitle;
  final VoidCallback onBottomButtonPressed;

  const OnboardView({
    super.key,
    required this.backgroundAsset,
    required this.title,
    required this.subtitle,
    required this.topButtonTitle,
    required this.onTopButtonPressed,
    required this.bottomButtonTitle,
    required this.onBottomButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(backgroundAsset),
        ),
      ),
      child: Container(
        padding: REdgeInsets.only(left: 16, bottom: 32, right: 16),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black87,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title.tr(),
              style: AppTextStyle.w600.copyWith(
                fontSize: 28.sp,
                color: AppColor.white,
              ),
            ),
            8.verticalSpace,
            Text(
              subtitle.tr(),
              style: AppTextStyle.w400.copyWith(
                fontSize: 18.sp,
                color: AppColor.white,
              ),
            ),
            24.verticalSpace,
            PrimaryButton.custom(
              background: AppColor.white,
              foreground: AppColor.dark,
              onPressed: onTopButtonPressed,
              child: Text(
                topButtonTitle.tr(),
                style: AppTextStyle.w500.copyWith(
                  fontSize: 16.sp,
                  color: AppColor.dark,
                ),
              ),
            ),
            12.verticalSpace,
            PrimaryButton.transparent(
              onPressed: onBottomButtonPressed,
              child: Text(
                bottomButtonTitle.tr(),
                style: AppTextStyle.w500.copyWith(
                  fontSize: 16.sp,
                  color: AppColor.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
