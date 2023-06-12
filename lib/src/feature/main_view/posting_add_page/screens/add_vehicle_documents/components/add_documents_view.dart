import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../../design_system/design_system.dart';
import '../../../../profile_page/screens/document_and_licenses/documents_page.dart';


class VehicleDocumentView extends StatelessWidget {
  const VehicleDocumentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.c2CB67D),
            ),
            child: DocumentListTile(
              title: 'Vehicle technical passport'.tr(),
              subtitle: 'Upload vehicle technical passport'.tr(),
              trailing: AppSvg.asset(
                AppIcon.tickCircle,
                height: 28.r,
                width: 28.r,
              ),
            ),
          ),
          12.verticalSpace,
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.primary),
            ),
            child: DocumentListTile(
              title: 'Vehicle insurance'.tr(),
              subtitle: 'Upload vehicle insurance'.tr(),
              bottom: Column(
                children: [
                  16.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                        child: UploadBox(
                          icon: AppIcon.group,
                          title: 'Upload front side'.tr(),
                          onPressed: () {},
                        ),
                      ),
                      8.horizontalSpace,
                      Expanded(
                        child: UploadBox(
                          icon: AppIcon.group,
                          title: 'Upload back side'.tr(),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          12.verticalSpace,
          DocumentListTile(
            title: 'Other document'.tr(),
            subtitle: 'Upload your document'.tr(),
          ),
        ],
      ),
    );
  }
}
