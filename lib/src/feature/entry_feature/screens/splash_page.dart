import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

class SplashPage extends StatefulWidget{
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();


}

class _SplashPageState extends State<SplashPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.all(16),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              DownToUp(
                withPosition: false,
                delayDurationInMilliseconds: 1,
                child: Center(
                  child: Image.asset(
                    AppIcon.logo,
                    height: 72.h,
                    color: AppColor.primaryDark,
                  ),
                ),
              ),
              Positioned(
                child: DownToUp(
                  delayDurationInMilliseconds: 1.2,
                  onFinish: () {
                    context.push('/LanguagePreferencePage');
                   // // context.read<EntryCubit>().state.maybeWhen(
                   //    introduced: () {
                   //      // GetAppNavigator.authNavigator()
                   //      //     .navigateAuthPage(context);
                   //    },
                   //    orElse: () {
                   //      // GetAppNavigator.entryNavigator()
                   //      //     .navigateLanguagePreferencePage(context);
                   //    },
                   //  );
                  },
                  child: Text(
                    'Rentcar © 2023. All rights reserved',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.w400.copyWith(
                      fontSize: 14.sp,
                      color: AppColor.c16161A,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
