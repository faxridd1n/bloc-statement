import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../design_system/colors/palette.dart';

class BrendCard extends StatelessWidget {
  const BrendCard({
    super.key,
    required this.image,
  });

  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.r,
      width: 72.r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36.r),
        color: AppColor.cF2F2F2,
      ),
      child: Center(
        child: Image.asset(
          image ?? '',
        ),
      ),
    );
  }
}
