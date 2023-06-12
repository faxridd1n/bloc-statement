import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:u_rent_demo/src/feature/main_view/posting_add_page/components/image_picker/function.dart';
import '../../../../design_system/design_system.dart';

class DownloadImageView extends StatelessWidget {
  DownloadImageView(this.setState, {Key? key}) : super(key: key);
  Function() setState;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) => SizedBox(
        height: 196.h,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            InkWell(
              onTap: () async {
                PermissionStatus cameraStatus = await Permission.storage.request();
                if (cameraStatus == PermissionStatus.granted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Permission Granted'),
                    ),
                  );
                }
                if (cameraStatus == PermissionStatus.denied) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('You need to provide camera permission'),
                    ),
                  );
                }
                if (cameraStatus == PermissionStatus.permanentlyDenied) {}
                if (cameraStatus==PermissionStatus.granted) {
                    imgFromGallery();  
                     setState((){});
                }
              
             
              },
              child: Container(
                color: AppColor.primary,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    40.verticalSpace,
                    SvgPicture.asset(
                      AppIcon.downloadImage,
                      height: 35.h,
                      width: 35.w,
                    ),
                    4.verticalSpace,
                    SizedBox(
                      height: 24.h,
                      width: 150.w,
                      child: Text(
                        'Upload images'.trim(),
                        style: AppTextStyle.w500.copyWith(
                          fontSize: 18.sp,
                          color: AppColor.dark,
                        ),
                      ),
                    ),
                    4.verticalSpace,
                    SizedBox(
                      height: 14.h,
                      width: 215.w,
                      child: Text(
                        'It is possible to upload multiple images'.tr(),
                        style: AppTextStyle.w400.copyWith(
                          fontSize: 12.sp,
                          color: AppColor.dark,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0.sp,
              child: Container(
                height: 22.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width,
                      30.0.r,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 208.sp,
              child: Container(
                height: 22.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(
                      MediaQuery.of(context).size.width,
                      30.0.r,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
