import 'dart:io';

import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';
import 'package:u_rent_demo/src/feature/main_view/posting_add_page/components/image_picker/function.dart';

class ImageGridView extends StatelessWidget {
  ImageGridView(this.setState, {super.key});
  Function() setState;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 12,
        left: 17,
        right: 17,
        bottom: 21,
      ),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 5.22.w,
              mainAxisSpacing: 4.w,
            ),
            itemCount: selectedImages!.length + 1,
            itemBuilder: (context, index) {
              return index == (selectedImages!.length)
                  ? InkWell(
                      onTap: () {
                        imgFromGallery();
                        setState();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColor.cF2F2F2,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        height: 64,
                        width: 85,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppSvg.asset(
                              AppIcon.downloadImage,
                              color: AppColor.c677294,
                              height: 20.h,
                              width: 20.w,
                            ),
                            5.verticalSpace,
                            Text(
                              'Upload images',
                              style: AppTextStyle.w500.copyWith(
                                fontSize: 10,
                                color: AppColor.c677294,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : InkWell(
                      onDoubleTap: () {
                        selectedImages!.removeAt(index);
                        setState();
                      },
                      child: SizedBox(
                        height: 64,
                        width: 85,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.file(
                            File(
                              selectedImages![index].path,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
            },
          ),
          8.verticalSpace,
          Text(
            'The first photo will be the main image of your ad.You can change the order of the photos by clicking and dragging them.',
           maxLines: 4,
           
            style: AppTextStyle.w400.copyWith(
              fontSize: 12.sp,
              color: AppColor.dark,
            ),
          ),
        ],
      ),
    );
  }
}
