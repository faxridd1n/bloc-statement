import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../design_system/colors/palette.dart';
import '../../../../design_system/design_system.dart';

class HomeLocationBottomSheet extends StatelessWidget {
  const HomeLocationBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 32.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Select your position',
            style: AppTextStyle.w700.copyWith(
              fontSize: 22.sp,
              color: AppColor.dark,
            ),
          ),
          36.verticalSpace,
          _Body(),
          36.verticalSpace,
          PrimaryButton(
              onPressed: (){},
              child: Text(
                'Confirm',
                style: AppTextStyle.w500.copyWith(
                  fontSize: 16.sp,
                  color: AppColor.dark,
                ),
              ),
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {

  List<String> items = [
    'Toshken',
    'Toshken',
    'Toshken',
    'Toshken',
    'Toshken',
    'Toshken',
    'Toshken',
    'Toshken',
    'Toshken',
    'Toshken',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.7,
      child: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (BuildContext context, int index) {
          return 24.verticalSpace;
        },
        itemBuilder: (BuildContext context, int index) {
          return _ItemCard(
            name: items[index],
            isSelected: false,
          );
        },
      ),
    );
  }
}

class _ItemCard extends StatelessWidget {
  const _ItemCard({
    required this.name,
    required this.isSelected,
  });

  final String name;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: isSelected
              ? AppTextStyle.w500.copyWith(
            fontSize: 16.sp,
            color: AppColor.primary,
          )
              : AppTextStyle.w400.copyWith(
            fontSize: 16.sp,
            color: AppColor.dark,
          ),
        ),
        if (isSelected) SvgPicture.asset(
          AppIcon.charmTick,
          height: 24.r,
          width: 24.r,
        ) else const SizedBox(),
      ],
    );
  }
}


