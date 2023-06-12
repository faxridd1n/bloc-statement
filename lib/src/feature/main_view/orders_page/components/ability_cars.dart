import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../design_system/design_system.dart';

class AbilityCars extends StatelessWidget {
  AbilityCars({required this.title,super.key});

  String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title.tr(),
              style: AppTextStyle.w600.copyWith(
                fontSize: 16.sp,
                color: AppColor.dark,
              ),
            ),
            RatingBar.builder(
                initialRating: 5,
                minRating: 1,
                itemSize: 24.0,
                unratedColor: AppColor.cF2F2F2,
                allowHalfRating: true,
                itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                itemBuilder: (context, _) => SvgPicture.asset(AppIcon.starEmtyInsite,),
                onRatingUpdate: (rating) {}
            ),
          ],
        )
      ],
    );
  }
}