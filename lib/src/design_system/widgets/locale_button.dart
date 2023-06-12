import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

import '../../../domain/core/src/locale.dart';

class LocalePreferenceButton extends StatelessWidget {
  final BuildContext ctx;
  final AppLocale locale;
  final VoidCallback onPressed;

  const LocalePreferenceButton({
    required this.ctx,
    required this.locale,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryButton.custom(
      background: AppColor.buttonBackground,
      foreground: AppColor.dark,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            locale.flag,
            height: 24.r,
            width: 24.r,
          ),
          12.horizontalSpace,
          Text(
            locale.title.tr(),
            style: AppTextStyle.w600.copyWith(
              fontSize: 16.sp,
              color: AppColor.dark,
            ),
          ),
        ],
      ),
      onPressed: () {
        ctx.setLocale(Locale(locale.languageCode));
        Future.delayed(
          const Duration(milliseconds: 300),
          () {
            onPressed.call();
          },
        );
      },
    );
  }
}

class LocaleSettingButton extends StatelessWidget {
  final AppLocale locale;

  const LocaleSettingButton({super.key, required this.locale});

  @override
  Widget build(BuildContext context) {
    return PrimaryButton.custom(
      background: Colors.transparent,
      foreground: AppColor.dark,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            locale.title.tr(),
            style: AppTextStyle.w600.copyWith(
              fontSize: 16.sp,
              color: AppColor.dark,
            ),
          ),
          Image.asset(
            locale.flag,
            height: 24.r,
            width: 24.r,
          ),
        ],
      ),
      onPressed: () async{
        context.setLocale(Locale(locale.languageCode));
        final engine = WidgetsFlutterBinding.ensureInitialized();
        await engine.performReassemble();
        Future.delayed(
          const Duration(milliseconds: 250),
          () {
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}
