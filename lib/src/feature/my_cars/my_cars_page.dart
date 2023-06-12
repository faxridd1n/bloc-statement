import 'package:flutter/material.dart';
import '../../design_system/colors/palette.dart';
import '../../design_system/design_system.dart';
import 'components/my_cars_item.dart';

class MyCarsPage extends StatelessWidget {
  const MyCarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColor.white,
            centerTitle: true,
            title: Text(
              'My Cars',
              style: AppTextStyle.w600.copyWith(
                fontSize: 18,
                color: AppColor.c1A0700,
              ),
            )
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: REdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  separatorBuilder: (context, index) => 12.verticalSpace,
                  itemBuilder: (context, index) => const MyCarsItem(),
                ),
              ],
            ),
          ),
        )
    );
  }
}

