import 'package:flutter/cupertino.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import '../src/design_system/colors/palette.dart';


void showStyleToast(BuildContext context, String msg) {
  showToast(
    msg,
    context: context,
    animation: StyledToastAnimation.slideFromTop,
    reverseAnimation: StyledToastAnimation.fade,
    position: StyledToastPosition.top,
    animDuration: const Duration(seconds: 1),
    duration: const Duration(seconds: 3),
    curve: Curves.elasticOut,
    backgroundColor: AppColor.red,

    reverseCurve: Curves.linear,
  );
}
