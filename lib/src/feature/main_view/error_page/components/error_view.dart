import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

class ErrorView extends StatelessWidget {
  String title;
  String text;
  String icon;
  ErrorView({required this.title,required this.text,required this.icon,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          143.verticalSpace,
          SvgPicture.asset(icon),
          32.verticalSpace,
          Text(title, style: AppTextStyle.w700.copyWith(
            fontSize: 28,
            color: AppColor.dark,
          ),),
          8.verticalSpace,
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 57, right: 57),
              child: Center(
                child: Text(text,maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.w400.copyWith(
                  fontSize: 16.5,
                  color: AppColor.dark,
                ),),
              ),
            ),
          ),
        ],
      );
  }
}
