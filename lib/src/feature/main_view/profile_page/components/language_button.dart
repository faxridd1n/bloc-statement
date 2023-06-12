import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../domain/core/src/locale.dart';
import '../../../../design_system/widgets/locale_button.dart';

class LanguageButtons extends StatelessWidget {
  const LanguageButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.verticalSpace,
         const LocaleSettingButton(locale: AppLocale.uz),
        10.verticalSpace,
         const LocaleSettingButton(locale: AppLocale.ru),
        10.verticalSpace,
         const LocaleSettingButton(locale: AppLocale.en),
      ],
    );
  }
}
