import 'package:flutter/material.dart';

import '../../../../design_system/design_system.dart';

class ProfilePageButton extends StatelessWidget {
  final String icon;
  final String title;
  final Widget? trailing;
  final Color? titleColor;
  final VoidCallback onTap;

  const ProfilePageButton({
    super.key,
    this.trailing,
    this.titleColor,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryButton.transparent(
      borderColor: AppColor.cE2E2E2,
      onPressed: onTap,
      child: Row(
        children: [
          AppSvg.asset(
            icon,
            height: 24.r,
            width: 24.r,
          ),
          12.horizontalSpace,
          Text(
            title,
            style: AppTextStyle.w500.copyWith(
              color: titleColor ?? AppColor.dark,
              fontSize: 16.sp,
            ),
          ),
          if (trailing != null)
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [trailing!],
              ),
            ),
        ],
      ),
    );
  }
}
