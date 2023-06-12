
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

/*class HeaderView extends StatefulWidget {
  const HeaderView({Key? key}) : super(key: key);

  @override
  State<HeaderView> createState() => _HeaderViewState();
}

class _HeaderViewState extends State<HeaderView> {



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 120.r,
          height: 120.r,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: image == null ?
          IconButton(
               onPressed: (){
              myAlert();
            },
            icon: AppSvg.asset(AppIcon.camera),
          ) :
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.file(
              File(image!.path),
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: 300,
            ),
          ),
        ),
        8.verticalSpace,
        Text(
          'Dakota Johnson',
          style: AppTextStyle.w600.copyWith(
            fontSize: 24.sp,
            color: AppColor.dark,
          ),
        ),
        4.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.verified,
              size: 16,
              color: AppColor.blue,
            ),
            4.horizontalSpace,
            Text(
              'Verified account',
              style: AppTextStyle.w400.copyWith(
                fontSize: 14.sp,
                color: AppColor.c677294,
              ),
            ),
          ],
        ),
      ],
    );
  }
}*/

class HeaderView extends StatelessWidget {
  const HeaderView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120.r,
          height: 120.r,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppImages.dakotaJohnson),
            ),
          ),
        ),
        8.verticalSpace,
        Text(
          'Dakota Johnson',
          style: AppTextStyle.w600.copyWith(
            fontSize: 24.sp,
            color: AppColor.dark,
          ),
        ),
        4.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.verified,
              size: 16,
              color: AppColor.blue,
            ),
            4.horizontalSpace,
            Text(
              'Verified account',
              style: AppTextStyle.w400.copyWith(
                fontSize: 14.sp,
                color: AppColor.c677294,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

