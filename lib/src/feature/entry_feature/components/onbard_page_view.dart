import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';
import 'onboard_inherit.dart';
import 'onboard_view.dart';


class OnboardPageView extends StatelessWidget {
  const OnboardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = OnboardInherit.of(context).pageController;
    final currentIndex = OnboardInherit.of(context).currentIndex;
    return PageView(
      controller: pageController,
      physics: const ClampingScrollPhysics(),
      onPageChanged: (index) {
        currentIndex.value = index;
      },
      children: [
        OnboardView(
          backgroundAsset: AppIcon.onboardBackground1,
          title: 'findYourVehicle'.tr(),
          subtitle: 'findThePerfectVehicleForAnyOccasion'.tr(),
          topButtonTitle: 'next'.tr(),
          onTopButtonPressed: () {
            pageController.animateToPage(
              1,
              duration: const Duration(milliseconds: 250),
              curve: Curves.ease,
            );
          },
          bottomButtonTitle: 'skip'.tr(),
          onBottomButtonPressed: () {
            pageController.animateToPage(
              2,
              duration: const Duration(milliseconds: 250),
              curve: Curves.ease,
            );
          },
        ),
        OnboardView(
          backgroundAsset: AppIcon.onboardBackground2,
          title: 'yourDreamCar'.tr(),
          subtitle: 'rentTheDreamCarForShortAndLongDistances'.tr(),
          topButtonTitle: 'next'.tr(),
          onTopButtonPressed: () {
            pageController.animateToPage(
              2,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          bottomButtonTitle: 'skip'.tr(),
          onBottomButtonPressed: () {
            pageController.animateToPage(
              2,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
        ),
        OnboardView(
          backgroundAsset: AppIcon.onboardBackground3,
          title: 'startYourJourney'.tr(),
          subtitle: 'logInNowAndEasilyStartYourNewJourneyWithUrent'.tr(),
          topButtonTitle: 'login'.tr(),
          onTopButtonPressed: () {
            context.go('/SignInPage');
          },
          bottomButtonTitle: 'signUp'.tr(),
          onBottomButtonPressed: () {
            context.go('/SignUpPage');
          },
        ),
      ],
    );
  }
}
