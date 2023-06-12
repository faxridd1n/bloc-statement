import 'package:flutter/material.dart';

import '../../../../../design_system/design_system.dart';

part 'components/list_tile.dart';

part 'components/upload_box.dart';

class DocumentAndLicensesPage extends StatelessWidget {
  const DocumentAndLicensesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, title: 'Document and licenses'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DocumentListTile(
              title: 'Passport',
              subtitle: 'Upload your passport or ID card',
              trailing: AppSvg.asset(
                AppIcon.tickCircle,
                height: 28.r,
                width: 28.r,
              ),
            ),
            12.verticalSpace,
            DocumentListTile(
              title: 'Driving license',
              subtitle: 'Upload your driving license',
              bottom: Column(
                children: [
                  16.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                        child: UploadBox(
                          icon: AppIcon.group,
                          title: 'Upload front side',
                          onPressed: () {},
                        ),
                      ),
                      8.horizontalSpace,
                      Expanded(
                        child: UploadBox(
                          icon: AppIcon.group,
                          title: 'Upload back side',
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            12.verticalSpace,
            const DocumentListTile(
              title: 'Other document',
              subtitle: 'Upload your document',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PrimaryButton(
        child: Text(
          'Save',
          style: AppTextStyle.w500.copyWith(fontSize: 16.sp),
        ),
        onPressed: () {},
      ),
    );
  }
}
