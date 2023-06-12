import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppSvg extends SvgPicture {
  AppSvg.asset(
    super.asset, {
    super.width,
    super.height,
    Color? color,
    super.fit = BoxFit.scaleDown,
    super.alignment = Alignment.center,
    BlendMode colorBlendMode = BlendMode.srcIn,
  }) : super.asset(
          colorFilter:
              color == null ? null : ColorFilter.mode(color, colorBlendMode),
        );
}
