import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../design_system/design_system.dart';

class TermsConditionsBottomSheet extends StatelessWidget {
  TermsConditionsBottomSheet({super.key});

  final List<String> descriptionLists = [
    'Lorem ipsum dolor sit amet consectetur. Pellentesque nisl lorem habitant ipsum ultrices. Nisl blandit pellentesque parturient ullamcorper urna gravida. Sem ullamcorper turpis nec turpis sed mus ac tortor.',
    'Lorem ipsum dolor sit amet consectetur. Pellentesque nisl lorem habitant ipsum ultrices. Nisl blandit pellentesque parturient ullamcorper urna gravida. Sem ullamcorper turpis nec turpis sed mus ac tortor.',
    'Lorem ipsum dolor sit amet consectetur. Pellentesque nisl lorem habitant ipsum ultrices. Nisl blandit pellentesque parturient ullamcorper urna gravida. Sem ullamcorper turpis nec turpis sed mus ac tortor.',
    'Lorem ipsum dolor sit amet consectetur. Pellentesque nisl lorem habitant ipsum ultrices. Nisl blandit pellentesque parturient ullamcorper urna gravida. Sem ullamcorper turpis nec turpis sed mus ac tortor.',
  ];



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
          4.verticalSpace,
          for(int i=0 ; i <= 3; i++)
            _BodyCard(
                description: descriptionLists[i],
            ),
          17.verticalSpace,
          _Selected(),
          34.verticalSpace,
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

class _BodyCard extends StatelessWidget {
  const _BodyCard({
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 12.h,
      ),
      child: Text(
        description,
        style: AppTextStyle.w400.copyWith(
          fontSize: 14.sp,
          color: AppColor.dark,
        ),
      ),
    );
  }
}

class _Selected extends StatelessWidget {

  final isSelected = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ValueListenableBuilder(
          valueListenable: isSelected,
          builder: (context, count, _){
            return InkWell(
              onTap: (){
                isSelected.value = !isSelected.value;
              },
              child: SvgPicture.asset(
                isSelected.value
                    ? AppIcon.tickSquare
                    : AppIcon.tickSquare,
                height: 24.r,
                width: 24.r,
              ),
            );
          },
        ),
        12.horizontalSpace,
        Text(
          'I am agree with terms and conditions',
          style: AppTextStyle.w400.copyWith(
            fontSize: 14.sp,
            color: AppColor.dark,
          ),
        )
      ],
    );
  }
}

