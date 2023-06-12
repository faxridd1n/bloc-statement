import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../design_system/assets/app_images.dart';
import '../../../design_system/colors/palette.dart';
import '../../../design_system/design_system.dart';

String textBio = 'Lorem ipsum dolor sit amet consectetur. Leo nisl egestas nisl parturient amet bibendum ac. Ut in risus suspendisse interdum a. Dui quis mauris.';

class BookingHistoryItem extends StatelessWidget {
   const BookingHistoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ImageName(),
        TimeMoney(),
      ],
    );
  }
}

class ImageName extends StatelessWidget {
  const ImageName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: textBio == null ? 72.h : 132.h,/// 132
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(12.r),
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 48.r,
                height: 48.r,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppImages.autoDataImage),
                  ),
                ),
              ),
              12.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Eshonov Bahodir',
                    style: AppTextStyle.w600.copyWith(
                      fontSize: 18,
                      color: AppColor.dark,
                    ),
                  ),
                  4.verticalSpace,
                  Row(
                    children: [
                      RatingBar.builder(
                          initialRating: 3.5,
                          minRating: 1,
                          itemSize: 16.0,
                          unratedColor: AppColor.cF2F2F2,
                          allowHalfRating: true,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => AppSvg.asset(AppIcon.star,height: 16,width: 16,),
                          onRatingUpdate: (rating) {}
                      ),
                      6.horizontalSpace,
                      Text(
                        '3.5',
                        style: AppTextStyle.w500.copyWith(
                          fontSize: 14,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          if (textBio != null) const TextBio()
        ],
      ),
    );
  }
}

class TimeMoney extends StatelessWidget {
  const TimeMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // height: 94.h,// 94
      width: MediaQuery.of(context).size.width,
      padding: REdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppIcon.timeStart,
                  ),
                  6.horizontalSpace,
                  Text(
                    'Start date',
                    style: AppTextStyle.w400.copyWith(
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              Text(
                '12.04.2023 11:30 ',
                style: AppTextStyle.w500.copyWith(
                  fontSize: 14,
                ),
              )
            ],
          ),
          8.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppIcon.timer,
                  ),
                  6.horizontalSpace,
                  Text(
                    'End date',
                    style: AppTextStyle.w400.copyWith(
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              Text(
                '15.04.2023 12:45',
                style: AppTextStyle.w500.copyWith(
                  fontSize: 14,
                ),
              )
            ],
          ),
          8.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppIcon.money,
                  ),
                  6.horizontalSpace,
                  Text(
                    'Total price',
                    style: AppTextStyle.w400.copyWith(
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              Text(
                '2 458 000 UZS',
                style: AppTextStyle.w600.copyWith(
                  fontSize: 16,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class TextBio extends StatelessWidget {
  const TextBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        10.verticalSpace,
        Text(
          textBio.tr(),
          maxLines: 3,
          style: AppTextStyle.w400.copyWith(
            fontSize: 14,
            color: AppColor.dark,
          ),
        ),
      ],
    );
  }
}
