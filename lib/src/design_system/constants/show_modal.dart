import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

modalBottomSheet({required BuildContext context, required Widget widget}){
  return showModalBottomSheet(
      //backgroundColor: AppColor.transparent,
      isScrollControlled: true,
      // isDismissible: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.r),
            topLeft: Radius.circular(25.r),
        ),
      ),
      context: context,
      builder: (context) {
        return widget;
      },
  );
}

modalDialog({required BuildContext context, required Widget widget}) async{
  return await showGeneralDialog(
    context: context,
    transitionBuilder: (ctx, a1, a2, child) {
      var curve = Curves.easeInQuart.transform(a1.value);
      return Transform.scale(
        scale: curve,
        child: widget,
      );
    },
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, a1, a2){
      return widget;
    },
  );
}
