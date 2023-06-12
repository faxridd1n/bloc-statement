import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

enum AppLocale {
  uz(
    flag: AppIcon.uz,
    title: 'uzbek',
    languageCode: 'uz',
  ),
  ru(
    flag: AppIcon.ru,
    title:'russian',
    languageCode: 'ru',
  ),
  en(
    flag: AppIcon.en,
    title:'english',
    languageCode: 'en',
  );

  final String flag;
  final String title;
  final String languageCode;

  const AppLocale({
    required this.flag,
    required this.title,
    required this.languageCode,
  });
}

mixin AppLocaleConfig {
  static const String fallbackLocale = 'ru';
  static const String localePath = 'assets/translations';

  static AppLocale currentLocale(Locale locale) {
    final lang = locale.languageCode;
    final result = AppLocale.values.firstWhere(
      (element) => element.languageCode == lang,
    );
    return result;
  }
}
