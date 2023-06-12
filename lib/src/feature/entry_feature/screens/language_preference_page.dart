import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

import '../../../../domain/core/src/locale.dart';
import '../../../design_system/widgets/locale_button.dart';


class LanguagePreferencePage extends StatefulWidget{
  const LanguagePreferencePage({super.key});

  @override
  State<LanguagePreferencePage> createState() => _LanguagePreferencePageState();


}

class _LanguagePreferencePageState extends State<LanguagePreferencePage>{


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        AppIcon.logo,
                        height: 72.h,
                      ),
                    ),
                    24.verticalSpace,
                    Text(
                      'easilyFindAndRentACar'.tr(),
                      textAlign: TextAlign.center,
                      style: AppTextStyle.w700.copyWith(
                        fontSize: 26.sp,
                        color: AppColor.dark,
                      ),
                    )
                  ],
                ),
              ),
              DownToUp(
                delayDurationInMilliseconds: 1.2,
                child: Column(
                  children: [
                    Text(
                      'pleaseChooseYourPreferredLanguage'.tr(),
                      textAlign: TextAlign.center,
                      style: AppTextStyle.w600.copyWith(
                        fontSize: 18.sp,
                        color: AppColor.dark,
                      ),
                    ),
                    20.verticalSpace,
                    LocalePreferenceButton(
                      ctx: context,
                      locale: AppLocale.uz,
                      onPressed: navigateOnBoarding,
                    ),
                    10.verticalSpace,
                    LocalePreferenceButton(
                      ctx: context,
                      locale: AppLocale.ru,
                      onPressed: navigateOnBoarding,
                    ),
                    10.verticalSpace,
                    LocalePreferenceButton(
                      ctx: context,
                      locale: AppLocale.en,
                      onPressed: navigateOnBoarding,
                    ),
                    16.verticalSpace,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigateOnBoarding(){
    context.push('/OnboardPage');
  }



}
