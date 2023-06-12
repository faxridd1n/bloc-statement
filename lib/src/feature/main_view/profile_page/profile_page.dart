import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../domain/core/src/locale.dart';
import '../../../design_system/assets/app_icons.dart';
import '../../../design_system/colors/palette.dart';
import '../../../design_system/constants/constants.dart';
import '../../../design_system/design_system.dart';
import '../posting_add_page/posting_add_page.dart';
import 'components/bottom_sheet.dart';
import 'components/button.dart';
import 'components/custom_shape.dart';
import 'components/header.dart';
import 'components/language_button.dart';
part 'components/become_lessor.dart';
part 'components/buttons_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
            children: [
              ClipPath(
                clipper: CustomShape(),
                child: Container(
                  height: 152.h,
                  color: AppColor.primary,
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: REdgeInsets.fromLTRB(16.h, 30.h, 16.h, 0.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const HeaderView(),
                      32.verticalSpace,
                      const _BecomeLessorView(),
                      32.verticalSpace,
                      const _ButtonsView(),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
