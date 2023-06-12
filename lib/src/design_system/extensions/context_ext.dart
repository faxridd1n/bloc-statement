import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension ContextExt on BuildContext{
  SystemUiOverlayStyle getSystemUiOverlayStyle() {
    final SystemUiOverlayStyle systemOverlayStyle;
    switch (Theme.of(this).brightness) {
      case Brightness.dark:
        systemOverlayStyle = SystemUiOverlayStyle.light;
        break;
      case Brightness.light:
        systemOverlayStyle = SystemUiOverlayStyle.dark;
        break;
    }
    return systemOverlayStyle.copyWith(
      systemNavigationBarColor: Colors.transparent,
    );
  }
}


extension PhoneNumberExtension on String {
  String get formattedPhoneNumber {
    final digits = replaceAll(RegExp(r'[^0-9]'), '');
    return '+$digits';
  }
}


extension DateTimeExtensions on DateTime {
  String toStringDate() {
    final day = this.day.toString().padLeft(2, '0');
    final month = this.month.toString().padLeft(2, '0');
    final year = this.year.toString();
    return '$day.$month.$year';
  }
}
