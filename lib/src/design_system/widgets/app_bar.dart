import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:u_rent_demo/src/design_system/extensions/context_ext.dart';

import '../assets/app_icons.dart';
import '../colors/palette.dart';
import '../style/text_style.dart';

class CustomAppBar extends AppBar {
  CustomAppBar(
    BuildContext context, {
    super.key,
    String? title,
    TextStyle? style,
    super.centerTitle = true,
    super.automaticallyImplyLeading,
    //super.leading = const AutoLeadingButton(),
    super.actions,
  }) : super(
          elevation: 0,
          foregroundColor: AppColor.dark,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          systemOverlayStyle: context.getSystemUiOverlayStyle(),
          title: title == null
              ? null
              : Text(
                  title,
                  style: style ??
                      AppTextStyle.w600.copyWith(
                        fontSize: 18,
                        color: AppColor.c1A0700,
                      ),
                ),
        );
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? icon;
  final Function()? onTab;

  const MyAppBar({
    super.key,
    required this.title,
    this.icon,
    this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      toolbarHeight: 60.h,
      backgroundColor: AppColor.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          AppIcon.arrowLeft,
          height: 24.r,
          width: 24.r,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
        style: AppTextStyle.w600.copyWith(
          fontSize: 18.sp,
          color: AppColor.c1A0700,
        ),
      ),
      actions: [
        if (icon != null) IconButton(
                onPressed: onTab,
                icon: SvgPicture.asset(
                  icon!,
                  height: 24.r,
                  width: 24.r,
                ),
              ) else const SizedBox(),
      ],
    );
  }

  @override
  Size get preferredSize => Size(1.sw, kToolbarHeight);
}
