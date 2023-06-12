import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

import '../constants/constants.dart';

class PrimaryButton extends TextButton {
  PrimaryButton({
    super.key,
    required super.child,
    required super.onPressed,
    EdgeInsetsGeometry? padding,
    double? maxWidth,
    double? minHeight,
  }) : super(
          style: ButtonStyle(
            minimumSize: MaterialStatePropertyAll(
              Size(
                maxWidth ?? DesignConstants.buttonMaxWidth.r,
                minHeight ?? DesignConstants.defaultButtonHeight.r,
              ),
            ),
            maximumSize: MaterialStatePropertyAll(
              Size(
                maxWidth ?? DesignConstants.buttonMaxWidth.r,
                double.infinity,
              ),
            ),
            foregroundColor: const MaterialStatePropertyAll(AppColor.dark),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  /// TODO: return disabled button color
                }
                return AppColor.primary;
              },
            ),
            overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                return Colors.black12;
              },
            ),
            padding: MaterialStatePropertyAll(
              padding ??
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 13).r,
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  DesignConstants.borderRadius,
                ),
              ),
            ),
          ),
        );

  PrimaryButton.transparent({
    super.key,
    required super.child,
    required super.onPressed,
    Color? borderColor,
    EdgeInsetsGeometry? padding,
    double maxWidth = DesignConstants.buttonMaxWidth,
    double minHeight = DesignConstants.defaultButtonHeight,
  }) : super(
          style: ButtonStyle(
            minimumSize:
                MaterialStatePropertyAll(Size(maxWidth.r, minHeight.r)),
            maximumSize: MaterialStatePropertyAll(
              Size(maxWidth.r, double.infinity),
            ),
            foregroundColor: const MaterialStatePropertyAll(AppColor.dark),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  /// TODO: return disabled button color
                }
                return Colors.transparent;
              },
            ),
            overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                return Colors.black12;
              },
            ),
            padding: MaterialStatePropertyAll(
              padding ??
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 13).r,
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                side: BorderSide(color: borderColor ?? AppColor.white),
                borderRadius: BorderRadius.circular(
                  DesignConstants.borderRadius,
                ),
              ),
            ),
          ),
        );

  PrimaryButton.custom({
    super.key,
    required super.child,
    required super.onPressed,
    required Color background,
    required Color foreground,
    Color? overlayColor,
    Color? disabledBackground,
    EdgeInsetsGeometry? padding,
    double maxWidth = DesignConstants.buttonMaxWidth,
    double minHeight = DesignConstants.defaultButtonHeight,
  }) : super(
          style: ButtonStyle(
            minimumSize:
                MaterialStatePropertyAll(Size(maxWidth.r, minHeight.r)),
            maximumSize: MaterialStatePropertyAll(
              Size(maxWidth.r, double.infinity),
            ),
            foregroundColor: MaterialStatePropertyAll(foreground),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return disabledBackground ?? background.withOpacity(0.5);
                }
                return background;
              },
            ),
            overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                return overlayColor ?? Colors.black12;
              },
            ),
            padding: MaterialStatePropertyAll(
              padding ??
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 13).r,
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  DesignConstants.borderRadius,
                ),
              ),
            ),
          ),
        );
}
